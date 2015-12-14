{ config, pkgs, lib, ... }:

with lib;

let

  xcfg = config.services.xserver;
  cfg = xcfg.desktopManager.e20;
  e20_enlightenment = pkgs.e20.enlightenment.override { set_freqset_setuid = true; };
  GST_PLUGIN_PATH = lib.makeSearchPath "lib/gstreamer-1.0" [
    pkgs.gst_all_1.gstreamer
    pkgs.gst_all_1.gst-plugins-base
    pkgs.gst_all_1.gst-plugins-good
    pkgs.gst_all_1.gst-plugins-bad
    pkgs.gst_all_1.gst-libav ];

in

{
  options = {

    services.xserver.desktopManager.e20.enable = mkOption {
      default = false;
      example = true;
      description = "Enable the E20 desktop environment.";
    };

  };

  config = mkIf (xcfg.enable && cfg.enable) {

    environment.systemPackages = [
      pkgs.e20.efl pkgs.e20.evas pkgs.e20.emotion pkgs.e20.elementary e20_enlightenment
      pkgs.e20.terminology pkgs.e20.econnman
      pkgs.xorg.xauth # used by kdesu
      pkgs.gtk # To get GTK+'s themes.
      pkgs.tango-icon-theme
      pkgs.shared_mime_info
      pkgs.gnome.gnomeicontheme
      pkgs.xorg.xcursorthemes
    ];

    environment.pathsToLink = [ "/etc/enlightenment" "/etc/xdg" "/share/enlightenment" "/share/elementary" "/share/applications" "/share/locale" "/share/icons" "/share/themes" "/share/mime" "/share/desktop-directories" ];

    services.xserver.desktopManager.session = [
    { name = "E20";
      start = ''
        # Set GTK_DATA_PREFIX so that GTK+ can find the themes
        export GTK_DATA_PREFIX=${config.system.path}
        # find theme engines
        export GTK_PATH=${config.system.path}/lib/gtk-3.0:${config.system.path}/lib/gtk-2.0
        export XDG_MENU_PREFIX=enlightenment

        export GST_PLUGIN_PATH="${GST_PLUGIN_PATH}"

        # make available for D-BUS user services
        #export XDG_DATA_DIRS=$XDG_DATA_DIRS''${XDG_DATA_DIRS:+:}:${config.system.path}/share:${pkgs.e20.efl}/share

        # Update user dirs as described in http://freedesktop.org/wiki/Software/xdg-user-dirs/
        ${pkgs.xdg-user-dirs}/bin/xdg-user-dirs-update

        ${e20_enlightenment}/bin/enlightenment_start
        waitPID=$!
      '';
    }];

    security.setuidPrograms = [ "e20_freqset" ];

    environment.etc = singleton
      { source = "${pkgs.xkeyboard_config}/etc/X11/xkb";
        target = "X11/xkb";
      };

    fonts.fonts = [ pkgs.dejavu_fonts pkgs.ubuntu_font_family ];

    services.udisks2.enable = true;
    services.upower.enable = config.powerManagement.enable;

    #services.dbus.packages = [ pkgs.efl ]; # dbus-1 folder is not in /etc but in /share, so needs fixing first

    systemd.user.services.efreet =
      { enable = true;
        description = "org.enlightenment.Efreet";
        serviceConfig =
          { ExecStart = "${pkgs.e20.efl}/bin/efreetd";
            StandardOutput = "null";
          };
      };

    systemd.user.services.ethumb =
      { enable = true;
        description = "org.enlightenment.Ethumb";
        serviceConfig =
          { ExecStart = "${pkgs.e20.efl}/bin/ethumbd";
            StandardOutput = "null";
          };
      };


  };

}
