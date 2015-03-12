{ config, pkgs, lib, ... }:

with lib;

let

  xcfg = config.services.xserver;
  cfg = xcfg.desktopManager.lxqt;
  lxqt = pkgs.lxqt;

in

{
  options = {

    services.xserver.desktopManager.lxqt.enable = mkOption {
      default = false;
      example = true;
      description = "Enable the LXQT desktop environment.";
    };

  };

  config = mkIf (xcfg.enable && cfg.enable) {

    environment.systemPackages = [
      lxqt
    ];

    environment.pathsToLink = [ "/" ];

    services.xserver.desktopManager.session = [
    { name = "LXQT";
      start = ''
        ${lxqt}/bin/startlxqt
        waitPID=$!
      '';
    }];

  };

}
