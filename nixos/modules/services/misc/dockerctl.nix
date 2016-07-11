{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.dockerctl;

  dataDir = cfg.dataDir;
  containers = filterAttrs (n: container: container.enable) cfg.containers;

  runServiceFun = name: container:
  let
    getTag = pkgs.runCommand "get_tag.sh" {} ''
      tar -xf ${container.image} ./repositories
      grep -oP '\w+' ./repositories | \
        tr '\n' ',' | \
        awk -F, '{printf $1":"$2}' > $out
    '';
    tag = builtins.readFile getTag;
    extraRunOptions = toString container.extraRunOptions;
  in
  {
    description = "Docker container ${name}";
    wantedBy = [ "multi-user.target" ];
    after = [ "network.target" "docker.service" ];
    requires = [ "docker.service" ];
    path = [ pkgs.docker ];
    serviceConfig = {
      ExecStartPre = "${pkgs.docker}/bin/docker load -i ${container.image}";  # takes few seconds, but even that is too much
      ExecStart = "${pkgs.systemd-docker.bin}/bin/systemd-docker run --rm --name=${name} ${extraRunOptions} '${tag}'";
      ExecStop = "${pkgs.docker}/bin/docker kill ${name}";
      TimeoutStopSec = "10";
      Type = "notify";
      NotifyAccess = "all";
    };
  };

  runServices = mapAttrs' (n: v: nameValuePair ("dockerctl-" + n) (runServiceFun n v)) containers;
in

{
  options = {
    services.dockerctl = {
      enable = mkOption {
        default = false;
        type = types.bool;
        description = ''
          Enable DockerCtl.
        '';
      };

      containers = mkOption {
        type = types.attrsOf types.optionSet;
        default = {};
        description = "Set of containers.";

        options = singleton ({ name, config, ... }:
        {
          options = {
            enable = mkOption {
              type = types.bool;
              default = true;
              description = ''
                Whether this container should be enabled.
              '';
            };
            extraRunOptions = mkOption {
              type = types.listOf types.str;
              default = [ ];
              example = [ "-p 8080:80" ];
              description = ''
                Extra run options (https://docs.docker.com/engine/reference/commandline/run/).
              '';
            };
            image = mkOption {
              type = types.package;
              description = ''
                Docker image, created with pkgs.dockerTools.pullImage or pkgs.dockerTools.buildImage.
              '';
            };
          };
        });

      };

    };
  };

  config = mkIf cfg.enable ({
    systemd.services = runServices;
  });
}
