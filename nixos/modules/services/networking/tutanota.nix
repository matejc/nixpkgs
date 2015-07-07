{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.tutanota;
  nginx = config.services.nginx.package;
  tutanota = pkgs.tutanota;
  documentRoot = "${tutanota}/share/tutanota/";
in {

    options = {

      services.tutanota = {

        enable = mkOption {
          type = types.bool;
          default = false;
          description = ''
            Whether to start Tutanota with Nginx.
          '';
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

      services.nginx.apps.tutanota = {
        enable = true;
        root = documentRoot;
        extraServerConfig = ''
          location / {
             try_files $uri $uri/ /index.html;
          }
        '';
        inherit (cfg) listenAddress listenPort enableSSL sslCertificate sslCertificateKey;
        serverName = cfg.hostName;
      };

    };
}
