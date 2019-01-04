{ config, lib, pkgs, ... }:

with lib;

let

  porttunnels = config.services.porttunnels;

  inherit (pkgs) autossh;

  makePortTunnelJob = cfg: name: {
    description = "Port Tunnel ‘${name}’";

    wantedBy = [ "multi-user.target" ];
    after = [ "network-interfaces.target" ];

    serviceConfig.ExecStart = ''
      ${autossh}/bin/autossh -M0 -- -N -i ${cfg.identity_file} ${if cfg.remote == true then "-R" else "-L"} ${if cfg.bind_address == "" then "" else "${cfg.bind_address}:"}${toString cfg.port}:${cfg.host}:${toString cfg.hostport} -o "UserKnownHostsFile=/dev/null" -o "PubkeyAuthentication=yes" -o "StrictHostKeyChecking=false" -o "PasswordAuthentication=no" -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" ${cfg.extraFlags} ${cfg.server}
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

    services.porttunnels = mkOption {
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

        identity_file = mkOption {
          type = types.path;
          example = "/home/someone/.ssh/id_rsa";
          description = ''
            Server address to connect to.
          '';
        };

        bind_address = mkOption {
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

        hostport = mkOption {
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

  config = mkIf (porttunnels != {}) {

    systemd.services = listToAttrs (mapAttrsFlatten (name: value: nameValuePair "porttunnel-${name}" (makePortTunnelJob value name)) porttunnels);

  };

}
