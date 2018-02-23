{ config, lib, pkgs, ... }:

with lib;

let

  portTunnels = config.services.portTunnels;

  inherit (pkgs) autossh;

  makePortTunnelJob = cfg: name: {
    description = "Port Tunnel ‘${name}’";

    wantedBy = [ "multi-user.target" ];
    after = [ "network-interfaces.target" ];

    serviceConfig.ExecStart = ''
      ${autossh}/bin/autossh -M ${toString (cfg.port+1)}:${toString (cfg.port+2)} -- -T -N -i ${cfg.identityFile} ${if cfg.remote == true then "-R" else "-L"} ${if cfg.bindAddress == "" then "" else "${cfg.bindAddress}:"}${toString cfg.port}:${cfg.host}:${toString cfg.hostPort} -o "UserKnownHostsFile=/dev/null" -o "PubkeyAuthentication=yes" -o "StrictHostKeyChecking=false" -o "PasswordAuthentication=no" -o "ServerAliveInterval=30" -o "ServerAliveCountMax=3" ${cfg.extraFlags} ${cfg.server}
    '';
    serviceConfig.Restart = "always";
    serviceConfig.Type = "simple";
    serviceConfig.User = "${cfg.user}";
    serviceConfig.StartLimitInterval = "60s";
    serviceConfig.StartLimitBurst = "20";
    serviceConfig.RestartSec = "2s";
  };

in

{

  ###### interface

  options = {

    services.portTunnels = mkOption {
      default = {};

      description = ''
        Port tunnel specification with ssh -L
      '';

      type = types.attrsOf types.optionSet;

      options = {
        server = mkOption {
          type = types.str;
          example = "someone@some.example.com";
          description = ''
            Server address to connect to.
          '';
        };

        remote = mkOption {
          default = true;
          type = types.bool;
          description = ''
            If you want to open port on the remote.
          '';
        };

        identityFile = mkOption {
          type = types.path;
          example = "/home/someone/.ssh/id_rsa";
          description = ''
            Server address to connect to.
          '';
        };

        bindAddress = mkOption {
          default = "";
          type = types.str;
          description = ''
            Bind address.
          '';
        };

        port = mkOption {
          type = types.int;
          description = ''
            Local port.
          '';
        };

        host = mkOption {
          default = "localhost";
          type = types.str;
          description = ''
            Host address.
          '';
        };

        hostPort = mkOption {
          type = types.int;
          description = ''
            Host port.
          '';
        };

        user = mkOption {
          type = types.str;
          example = "someone";
          description = ''
            Run ssh under this user.
          '';
        };

        extraFlags = mkOption {
          type = types.str;
          example = "-p2022";
          default = "";
          description = ''
            Extra ssh flags.
          '';
        };
      };

    };

  };


  ###### implementation

  config = mkIf (portTunnels != {}) {

    systemd.services = listToAttrs (mapAttrsFlatten (name: value: nameValuePair "porttunnel-${name}" (makePortTunnelJob value name)) portTunnels);

  };

}
