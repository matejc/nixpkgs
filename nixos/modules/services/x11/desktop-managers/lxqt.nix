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
      lxqt.compton-conf lxqt.liblxqt lxqt.liblxqt-mount lxqt.libqtxdg
      lxqt.libsysstat lxqt.lxqt-about lxqt.lxqt-admin lxqt.lxqt-common
      lxqt.lxqt-config lxqt.lxqt-globalkeys lxqt.lxqt-notificationd
      lxqt.lxqt-openssh-askpass lxqt.lxqt-panel lxqt.lxqt-policykit
      lxqt.lxqt-powermanagement lxqt.lxqt-qtplugin lxqt.lxqt-runner
      lxqt.lxqt-session lxqt.obconf-qt lxqt.pcmanfm-qt pkgs.openbox
      pkgs.compton pkgs.xscreensaver
      # lxqt.lxqt-connman-applet
    ];

    environment.pathsToLink = [ "/" ];

    services.xserver.desktopManager.session = singleton {
      name = "LXQt";
      start = ''
        export XDG_DESKTOP_DIR="$HOME/."
        ${lxqt.lxqt-common}/bin/startlxqt
        waitPID=$!
      '';
    };

  };

}
