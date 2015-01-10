{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.services.tiddly;

  run_tiddly = pkgs.writeScript "run-tiddly.sh" ''
    #! ${pkgs.stdenv.shell}
    ${pkgs.tiddlyWrapper}/bin/twinstance /var/lib/tiddly/data || true
    cd /var/lib/tiddly/data && \
      ${pkgs.tiddlyWrapper}/bin/twanager server localhost ${toString cfg.port}
  '';

  init_mysql = builtins.toFile "init-mysql.sh" ''
    create database tiddlyspace;
  '';

in

{

  ###### interface

  options = {

    services.tiddly = {

      enable = mkOption {
        default = false;
        type = types.bool;
        description = "
          Whether to enable the tiddly server.
        ";
      };

      port = mkOption {
        default = 4444;
        type = types.int;
        description = "
          Port of tiddly server.
        ";
      };

    };

  };


  ###### implementation

  config = mkIf config.services.tiddly.enable {

    users.extraUsers.tiddly =
      { uid = config.ids.uids.tiddly;
        description = "tiddly user";
        createHome = true;
        home = "/var/lib/tiddly";
      };

    systemd.services.tiddly =
      {
        description = "tiddly server";
        after = [ "network.target" ];
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          User = "tiddly";
          ExecStart = "${run_tiddly}";
        };
      };

    environment.systemPackages = [ pkgs.tiddlyWrapper ];

  };

}
