{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.usernetes;

  subXidRange = {
    count = mkOption rec {
      type = types.ints.between default 100000;
      default = 65536;
      description = "Count of subordinate ids";
    };
    start = mkOption {
      type = types.ints.between 231072 4294967295;
      default = 231072;
      description = "Start of the range of subordinate ids that user is allowed to use";
    };
  };

  userOptions = {config, options, name, ...}: {
    options.subUidRange = subXidRange;
    options.subGidRange = subXidRange;
  };

  userConfigs = mapAttrs (n: u: {
    subUidRanges = [ (with u.subUidRange; { inherit count; startUid = start; }) ];
    subGidRanges = [ (with u.subGidRange; { inherit count; startGid = start; }) ];
    packages = [ pkgs.usernetes exposeScript ];
  }) cfg.users;

  exposeScript = pkgs.writeScriptBin "usernetes-expose" ''
    #!${pkgs.stdenv.shell}
    PATH="${makeBinPath [ pkgs.socat pkgs.utillinux pkgs.coreutils ]}"
    [[ $# -ne 2 ]] && { echo "Usage: $0 <listen port> <Usernetes netns port>"; exit 1; }
    pid=$(cat $XDG_RUNTIME_DIR/usernetes/rootlesskit/child_pid)
    socat -t -- TCP-LISTEN:$1,reuseaddr,fork EXEC:"nsenter -U -n -t $pid socat -t -- STDIN TCP4\:127.0.0.1\:$2"
  '';

  tasks = {
    kubernetes-docker = "";
    kubernetes-crio = "default-crio";
    kubernetes-containerd = "default-containerd";
    docker = "dockerd";
    containerd = "containerd";
    crio = "crio";
  };
in {
  options = {
    services.usernetes = {
      enable = mkEnableOption "Enable Usernetes";
      mode = mkOption {
        type = types.enum (attrNames tasks);
        default = "kubernetes-docker";
        description = "Usernetes mode";
      };
      users = mkOption {
        type = types.attrsOf (types.submodule userOptions);
        description = "List of users to set setuid and setgid maps";
      };
    };
  };

  config = mkIf cfg.enable {
    systemd.user.services.usernetes = {
      description = "Usernetes process";
      wantedBy = [ "multi-user.target" ];
      after = [ "network.target" ];
      restartIfChanged = true;
      environment.DOCKERD_ARGS = "--storage-driver=vfs";
      environment.CONTROLLER_MANAGER_ARGS = "--enable-hostpath-provisioner";
      serviceConfig = {
        ExecStart = "${pkgs.usernetes}/bin/usernetes-run ${tasks.${cfg.mode}}";
        Restart = "on-failure";
      };
    };
    users.users = userConfigs;
  };
}
