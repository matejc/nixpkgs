{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.services.teleport;

  configFile = cfg.configFile;

in

{

  ###### interface

  options = {

    services.teleport = {

      enable = mkEnableOption "the teleport server";

      configFile = mkOption {
        type = types.path;
        description = "teleport.yaml file";
      };

    };

  };


  ###### implementation

  config = mkIf config.services.teleport.enable {

    users.extraUsers.teleport =
      { uid = config.ids.uids.teleport;
        description = "Teleport user";
        createHome = true;
        home = "/var/lib/teleport";
      };

    users.extraGroups.teleport =
      { gid = config.ids.gids.teleport;
      };

    systemd.services.teleport =
      {
        description = "Teleport server";
        after = [ "network.target" ];
        wantedBy = [ "multi-user.target" ];
        preStart = ''
          ln -sf ${configFile} /var/lib/teleport/teleport.yaml
        '';
        serviceConfig = {
          User = "teleport";
          ExecStart = "${pkgs.teleport}/bin/teleport start -c ${configFile}";
        };
      };

    environment.systemPackages = [ pkgs.teleport ];

  };

}
