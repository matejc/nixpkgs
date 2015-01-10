{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.services.tiddlywiki;

  run_tiddlywiki = pkgs.writeScript "run-tiddlywiki.sh" ''
    #! ${pkgs.stdenv.shell}
    ${pkgs.tiddlywiki}/bin/tiddlywiki /var/lib/tiddlywiki/data --init server || true
    ${pkgs.tiddlywiki}/bin/tiddlywiki /var/lib/tiddlywiki/data --server ${toString cfg.port} $:/core/save/all text/plain text/html ${cfg.username} ${cfg.password} ${cfg.host} ${cfg.pathPrefix}
  '';

in

{

  ###### interface

  options = {

    services.tiddlywiki = {

      enable = mkOption {
        default = false;
        type = types.bool;
        description = "
          Whether to enable the tiddlywiki server.
        ";
      };

      port = mkOption {
        default = 8080;
        type = types.int;
        description = "
          Listen port of tiddlywiki.
        ";
      };

      username = mkOption {
        default = "default";
        type = types.str;
        description = "
          Username for tiddlywiki.
        ";
      };

      password = mkOption {
        default = "default";
        type = types.str;
        description = "
          Password for tiddlywiki.
        ";
      };

      host = mkOption {
        default = "localhost";
        type = types.str;
        description = "
          Listen address for tiddlywiki.
        ";
      };

      pathPrefix = mkOption {
        default = "";
        type = types.str;
        description = "
          Http path prefix for tiddlywiki.
        ";
      };

    };

  };


  ###### implementation

  config = mkIf config.services.tiddlywiki.enable {

    users.extraUsers.tiddlywiki =
      { uid = config.ids.uids.tiddlywiki;
        description = "tiddlywiki user";
        createHome = true;
        home = "/var/lib/tiddlywiki";
      };

    systemd.services.tiddlywiki =
      {
        description = "tiddlywiki server";
        after = [ "network.target" ];
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          User = "tiddlywiki";
          ExecStart = "${run_tiddlywiki}";
        };
      };

    environment.systemPackages = [ pkgs.tiddlywiki ];

  };

}
