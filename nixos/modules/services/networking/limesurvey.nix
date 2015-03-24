{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.limesurvey;
  nginx = config.services.nginx.package;
  nginxUser = config.services.nginx.user;
  nginxGroup = config.services.nginx.group;
  php = config.services.phpfpm.phpPackage;
  limesurvey = pkgs.limesurvey;

  limesurveyConfig = pkgs.writeText "config.php" ''
    <?php
    $config = array();
    $config['name']  = "${cfg.siteName}";
    $config['runtimePath'] = "${cfg.dataDir}/tmp/runtime";
    $config['components'] = array();
    $config['components']['db'] = array();
    $config['components']['db']['connectionString'] = '${cfg.dbType}:host=${cfg.dbHost};port=${cfg.dbPort};user=${cfg.dbUser};password=${cfg.dbPassword};dbname=${cfg.dbName};';
    $config['components']['db']['username'] = '${cfg.dbUser}';
    $config['components']['db']['password'] = '${cfg.dbPassword}';
    $config['components']['db']['charset'] = 'utf-8';
    $config['components']['db']['tablePrefix'] = "prefix_";
    $config['components']['assetManager'] = array();
    $config['components']['assetManager']['basePath'] = '${cfg.dataDir}/tmp/assets';
    $config['config'] = array();
    $config['config']['debug'] = 1;
    $config['config']['tempdir']  = "${cfg.dataDir}/tmp";
    $config['config']['uploaddir']  = "${cfg.dataDir}/upload";
    $config['config']['force_ssl'] = '${if cfg.forceSSL then "on" else ""}';
    $config['config']['defaultlang'] = '${cfg.defaultLang}';
    return $config;
    ?>
  '';

  documentRoot = "${limesurvey}/share/limesurvey/";

  startupScript = ''
    if [ ! -f ${cfg.dataDir}/.created ]; then
      mkdir -p ${cfg.dataDir}/{tmp/runtime,tmp/assets,tmp/upload,upload}
      chmod -R ug+rw ${cfg.dataDir}
      chmod -R o-rwx ${cfg.dataDir}
      chown -R ${nginxUser}:${nginxGroup} ${cfg.dataDir}

      ${pkgs.postgresql}/bin/createuser -s -r postgres || true
      ${pkgs.postgresql}/bin/createuser --no-superuser --no-createdb --no-createrole "${cfg.dbUser}" || true
      ${pkgs.postgresql}/bin/createdb "${cfg.dbName}" -O "${cfg.dbUser}" || true
      ${pkgs.sudo}/bin/sudo -u postgres ${pkgs.postgresql}/bin/psql -U postgres -d postgres -c "alter user ${cfg.dbUser} with password '${cfg.dbPassword}';" || true

      export LIMESURVEY_CONFIG=${limesurveyConfig}
      ${pkgs.limesurvey}/bin/limesurvey-console install '${cfg.adminUser}' '${cfg.adminPassword}' '${cfg.adminUser}' '${cfg.adminEmail}'

      touch ${cfg.dataDir}/.created
    fi
  '';

in {

    options = {

      services.limesurvey = {

        enable = mkOption {
          type = types.bool;
          default = false;
          description = ''
            Whether to start LimeSurvey with Nginx.
          '';
        };

        id = mkOption {
          default = "main";
          description = ''
            A unique identifier necessary to keep multiple owncloud server
            instances on the same machine apart.  This is used to
            disambiguate the administrative scripts, which get names like
            mediawiki-$id-change-password.
          '';
        };

        dbType = mkOption {
          default = "pgsql";
          description = "Type of database for limesurvey, for now, only pgsql.";
          type = types.enum ["pgsql"];
        };

        dbName = mkOption {
          default = "limesurvey";
          description = "Name of the database that holds the limesurvey data.";
          type = types.str;
        };

        dbHost = mkOption {
          default = "localhost";
          description = "Limesurvey database host.";
          type = types.str;
        };

        dbPort = mkOption {
          default = "5432";
          description = "Limesurvey database port.";
          type = types.str;
        };

        dbUser = mkOption {
          default = "limesurvey";
          description = "Limesurvey database user.";
          type = types.str;
        };

        dbPassword = mkOption {
          example = "foobar";
          description = "Limesurvey database password.";
          type = types.str;
        };

        adminUser = mkOption {
          description = "Limesurvey admin username.";
          default = "admin";
          type = types.str;
        };

        adminPassword = mkOption {
          description = "Default limesurvey admin password.";
          default = "admin";
          type = types.str;
        };

        adminEmail = mkOption {
          description = "Limesurvey admin email.";
          default = "admin@admin.com";
          type = types.str;
        };

        forceSSL = mkOption {
          default = if cfg.enableSSL then true else false;
          description = "Force use of HTTPS connection.";
          type = types.bool;
        };

        siteName = mkOption {
          default = "LimeSurvey";
          description = "LimeSurvey name of the site.";
          type = types.str;
        };

        defaultLang = mkOption {
          default = "en";
          description = "LimeSurvey default language.";
          type = types.str;
        };

        dataDir = mkOption {
          default = "/var/lib/limesurvey";
          description = "LimeSurvey data directory.";
          type = types.path;
        };

        hostName = mkOption {
          default = "localhost";
          description = "Host name of the server.";
        };

        listenAddress = mkOption {
          default = "localhost";
          description = "Listen address of the server.";
        };

        listenPort = mkOption {
          default = "80";
          description = "Listen port of the server.";
        };

        enableSSL = mkOption {
          type = types.bool;
          default = false;
          description = ''
            Whether to enable SSL.
          '';
        };

        sslCertificate = mkOption {
          type = types.path;
          default = null;
          description = ''
            Whether to set SSL certificate.
          '';
        };

        sslCertificateKey = mkOption {
          type = types.path;
          default = null;
          description = ''
            Whether to set SSL key.
          '';
        };
      };
    };

    config = mkIf cfg.enable {

      services.nginx.enable = true;

      services.nginx.apps.limesurvey = {
        enable = true;
        isPhpApp = true;
        root = documentRoot;
        extraServerConfig = ''
          set $host_path "${documentRoot}";
          charset utf-8;
          try_files $uri /index.php?$args;
          location ~ ^/(protected|framework|themes/\w+/views) {
              deny  all;
          }
          #avoid processing of calls to unexisting static files by yii
          location ~ \.(png|jpg|gif|swf|ico|pdf|mov|fla|zip|rar)$ {
              try_files $uri =404;
          }
          location ~ \.php$ {
              fastcgi_split_path_info  ^(.+\.php)(.*)$;
              include ${nginx}/conf/fastcgi_params;
              try_files $uri index.php;
              fastcgi_index index.php;
              ${optionalString cfg.enableSSL "fastcgi_param HTTPS on;"}
              fastcgi_param  LIMESURVEY_CONFIG ${limesurveyConfig};
              fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
              fastcgi_param  SCRIPT_NAME      $fastcgi_script_name;
              fastcgi_pass unix:///run/phpfpm/limesurvey;
          }
        '';
        after = [ "postgresql.service" ];
        preStart = startupScript;
        inherit (cfg) listenAddress listenPort enableSSL sslCertificate sslCertificateKey;
        serverName = cfg.hostName;
      };

    };
}
