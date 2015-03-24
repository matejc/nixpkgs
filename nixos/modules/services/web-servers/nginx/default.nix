{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.nginx;

  nginx = cfg.package;

  configFile = pkgs.writeText "nginx.conf" ''
    user ${cfg.user} ${cfg.group};
    daemon off;
    ${cfg.config}
    ${optionalString (httpConfig != "") ''
    http {
      ${httpConfig}
    }
    ''}
    ${cfg.appendConfig}
  '';

  httpConfig = cfg.httpConfig + (optionalString (apps != []) ''
    ${concatStrings (mapAttrsToList (n: v: v.config) apps)}
  '');

  appNix = import ./app.nix;

  apps = mapAttrs
    (name: options: appNix { inherit lib pkgs cfg name options; })
    (filterAttrs (n: o: o.enable) cfg.apps);

  preStartScripts = mapAttrs' (n: v: nameValuePair ("nginx-" + n) v.preStart) apps;

  poolConfigs = mapAttrs'
    (n: v: nameValuePair n v.fpmPool)
    (filterAttrs (n: o: o.isPhpApp) apps);
in

{
  options = {
    services.nginx = {
      enable = mkOption {
        default = false;
        type = types.bool;
        description = "
          Enable the nginx Web Server.
        ";
      };

      package = mkOption {
        default = pkgs.nginx;
        type = types.package;
        description = "
          Nginx package to use.
        ";
      };

      config = mkOption {
        default = "events {}";
        description = "
          Verbatim nginx.conf configuration.
        ";
      };

      appendConfig = mkOption {
        type = types.lines;
        default = "";
        description = ''
          Configuration lines appended to the generated Nginx
          configuration file. Commonly used by different modules
          providing http snippets. <option>appendConfig</option>
          can be specified more than once and it's value will be
          concatenated (contrary to <option>config</option> which
          can be set only once).
        '';
      };

      httpConfig = mkOption {
        type = types.lines;
        default = "";
        description = "Configuration lines to be appended inside of the http {} block.";
      };

      stateDir = mkOption {
        default = "/var/spool/nginx";
        description = "
          Directory holding all state for nginx to run.
        ";
      };

      user = mkOption {
        type = types.str;
        default = "nginx";
        description = "User account under which nginx runs.";
      };

      group = mkOption {
        type = types.str;
        default = "nginx";
        description = "Group account under which nginx runs.";
      };

      apps = mkOption {
        type = types.attrsOf types.optionSet;
        default = {};
        description = "Set of php applications.";

        options = singleton ({ name, config, ... }:
        {
          options = {
            enable = mkOption {
              type = types.bool;
              default = true;
              description = ''
                Whether this config should be enabled.
              '';
            };
            isPhpApp = mkOption {
              type = types.bool;
              default = false;
              description = ''
                Whether to enable phpfpm.
              '';
            };
            enableSSL = mkOption {
              type = types.bool;
              default = false;
              description = ''
                Whether to enable SSL for this Nginx server block.
              '';
            };
            sslCertificate = mkOption {
              type = types.path;
              default = null;
              description = ''
                Whether to set SSL certificate for this Nginx server block.
              '';
            };
            sslCertificateKey = mkOption {
              type = types.path;
              default = null;
              description = ''
                Whether to set SSL key for this Nginx server block.
              '';
            };
            listenAddress = mkOption {
              type = types.str;
              default = "localhost:80";
              description = ''
                Listen address.
              '';
            };
            listenPort = mkOption {
              type = types.str;
              default = "localhost:80";
              description = ''
                Listen port.
              '';
            };
            root = mkOption {
              type = types.str;
              example = "/var/lib/www";
              description = ''
                Root directory for the application.
              '';
            };
            serverName = mkOption {
              type = types.str;
              default = "localhost";
              description = ''
                Domain name for the app.
              '';
            };
            extraServerConfig = mkOption {
              type = types.str;
              default = "";
              description = ''
                Extra configuration in server block.
              '';
            };
            fpmPool = mkOption {
              type = types.lines;
              default = ''
                pm = dynamic
                pm.max_children = 25
                pm.min_spare_servers = 2
                pm.max_spare_servers = 25
                pm.start_servers = 2
              '';
              description = ''
                Extra php-fpm pool configuration.
              '';
            };
            preStart = mkOption {
              type = types.str;
              default = "";
              description = ''
                Pre Nginx start script.
              '';
            };
            after = mkOption {
              type = types.listOf types.str;
              default = [];
              description = ''
                Run preStart after this services.
              '';
            };
          };
        });

      };

    };
  };

  config = mkIf cfg.enable ({
    # TODO: test user supplied config file pases syntax test

    systemd.services = {
      nginx = {
        description = "Nginx Web Server";
        after = [ "network.target" ];
        wantedBy = [ "multi-user.target" ];
        path = [ nginx ];
        preStart =
          ''
          mkdir -p ${cfg.stateDir}/logs
          chmod 700 ${cfg.stateDir}
          chown -R ${cfg.user}:${cfg.group} ${cfg.stateDir}
          '';
        serviceConfig = {
          ExecStart = "${nginx}/bin/nginx -c ${configFile} -p ${cfg.stateDir}";
          Restart = "on-failure";
          RestartSec = "10s";
          StartLimitInterval = "1min";
        };
      };
    } // preStartScripts;

    users.extraUsers = optionalAttrs (cfg.user == "nginx") (singleton
      { name = "nginx";
        group = cfg.group;
        uid = config.ids.uids.nginx;
      });

    users.extraGroups = optionalAttrs (cfg.group == "nginx") (singleton
      { name = "nginx";
        gid = config.ids.gids.nginx;
      });

    services.phpfpm.poolConfigs = mkIf (poolConfigs != {}) poolConfigs;

  });
}
