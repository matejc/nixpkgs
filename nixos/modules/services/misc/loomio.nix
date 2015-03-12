{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.loomio;

  loomio = pkgs.loomio.override { inherit (cfg) dataDir; };

  loomioSetAdminScript = pkgs.writeScriptBin "loomio-setadmin" ''
    DEVISE_SECRET=${cfg.secretKey} ${pkgs.su}/bin/su -s ${pkgs.stdenv.shell} loomio -c '${loomio}/bin/loomio-bundle exec rails runner -e production "u = User.find_by email: '"'$1'"'; u.is_admin = true; u.save; exit;"'
  '';

in {

  ##### Interface
  options.services.loomio = {
    enable = mkOption {
      type = types.bool;
      default = false;
      description = ''
        Whether to enable Loomio service.
      '';
    };

    port = mkOption {
      type = types.int;
      default = 8888;
      description = ''
        Loomio listening port.
      '';
    };

    dataDir = mkOption {
      type = types.str;
      default = "/var/lib/loomio";
      description = ''
        Data dir for Loomio.
      '';
    };

    secretKey = mkOption {
      type = types.str;
      default = "SomethingVeryLong.";
      description = ''
        Loomio secret key (do change this).
      '';
    };

  };

  ##### Implementation
  config = mkIf cfg.enable {
    systemd.services.loomio = {
      description = "Loomio";

      wantedBy = [ "multi-user.target" ];
      after = [ "postgresql.service" ];

      path = [ loomio ];
      environment = {
        RAILS_ENV = "production";
        DEVISE_SECRET = cfg.secretKey;
        SECRET_COOKIE_TOKEN = cfg.secretKey;
      };

      preStart = ''
        mkdir -p ${cfg.dataDir}/log
        mkdir -p ${cfg.dataDir}/tmp
        mkdir -p ${cfg.dataDir}/public

        if [ ! -f ${cfg.dataDir}/.created ]; then
          ${pkgs.postgresql}/bin/createuser -s -r postgres || true
          ${pkgs.postgresql}/bin/createuser --no-superuser --createdb --createrole "loomio" || true
          loomio-bundle exec rake db:create --trace
          cp ${loomio}/share/loomio/_public/* ${cfg.dataDir}/public/
          QUERY="CREATE EXTENSION IF NOT EXISTS hstore;"
          ${pkgs.sudo}/bin/sudo -u postgres ${pkgs.postgresql}/bin/psql -h "/tmp" -U postgres -d loomio_db -Atw -c "$QUERY" || true
          loomio-bundle exec rake db:setup --trace && \
            #loomio-bundle exec rake assets:precompile && \
            loomio-bundle exec rails console production --help && \
            touch ${cfg.dataDir}/.created
        else
          ${pkgs.su}/bin/su -s ${pkgs.stdenv.shell} loomio -c 'loomio-bundle exec rake db:migrate'
        fi
        chown -R loomio ${cfg.dataDir}
        chmod u+s ${cfg.dataDir}
      '';

      serviceConfig = {
        ExecStart = "${pkgs.su}/bin/su -s ${pkgs.stdenv.shell} loomio -c '${loomio}/bin/loomio-bundle exec rails server --binding 127.0.0.1 --port ${toString cfg.port}'";
      };
    };

    users.extraUsers.loomio =
    { uid = config.ids.uids.loomio;
      description = "Loomio user";
      createHome = true;
      home = cfg.dataDir;
      extraGroups = [ "postgres" ];
    };
    services.postgresql.enable = true;
    services.postgresql.authentication = ''
      local all loomio trust
    '';
    environment.systemPackages = [ loomio loomioSetAdminScript ];
  };
}
