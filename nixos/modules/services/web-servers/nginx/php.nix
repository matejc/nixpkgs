{ lib, pkgs, cfg, name, options }:

with lib;

let
  config = ''
  # php application ${name}
  server {
      listen ${options.listenAddress+":"}${options.listenPort}${optionalString options.enableSSL " ssl"};

      ${optionalString (options.root != "") "root ${options.root};"}

      server_name ${options.serverName};

      ${optionalString options.enableSSL "ssl_certificate ${options.sslCertificate};"}
      ${optionalString options.enableSSL "ssl_certificate_key ${options.sslCertificateKey};"}

      index index.php;

      access_log  /var/log/nginx-${name}-access.log;
      error_log  /var/log/nginx-${name}-error.log;

      include ${cfg.package}/conf/mime.types;

      ${options.extraServerConfig}
  }

  '';

  preStart =
    { description = "Nginx PHP application ${name} pre start script.";
      wantedBy = [ "nginx.service" ];
      before = [ "nginx.service" ];
      after = [ "phpfpm.service" ] ++ options.after;
      script =
        ''
          ${options.preStart}
        '';
      serviceConfig.Type = "oneshot";
    };

  fpmPool = ''
    listen = /run/phpfpm/${name}
    listen.owner = ${cfg.user}
    listen.group = ${cfg.group}
    listen.mode = 0660
    user = ${cfg.user}
    ${options.fpmPool}
  '';
in {
  inherit preStart config fpmPool name options;
}
