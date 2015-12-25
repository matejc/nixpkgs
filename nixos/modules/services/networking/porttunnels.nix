{ config, lib, pkgs, ... }:

with lib;

let

  porttunnels = config.services.porttunnels;

  inherit (pkgs) openssh;

  makePortTunnelJob = cfg: name: {
    description = "Port Tunnel ‘${name}’";

    wantedBy = [ "multi-user.target" ];
    after = [ "network-interfaces.target" ];

    serviceConfig.ExecStart = "${openssh}/bin/ssh -N -i ${cfg.identity_file} -L ${toString cfg.port}:${cfg.host}:${toString cfg.hostport} ${cfg.extraFlags} ${cfg.server}";
    serviceConfig.Restart = "always";
    serviceConfig.Type = "simple";
    serviceConfig.User = "${cfg.user}";
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

        identity_file = mkOption {
          type = types.path;
          example = "/home/someone/.ssh/id_rsa";
          description = ''
            Server address to connect to.
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
