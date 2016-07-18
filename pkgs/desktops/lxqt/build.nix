{ stdenv, callPackage, qt5, fetchgit, autogen, cmake, qtbase, pkgconfig, libconfig, xlibs
, libfm, menu-cache, libexif, lib, automake, xorg, kde5, polkit-qt, gnome
, openbox, which, pango, imlib2, makeWrapper, glib, buildEnv, zlib, qtx11extras
, alsaPlugins, libpulseaudio, polkit, freetype, fontconfig, libxml2, autoconf
, qttools, libtool, gnum4, intltool, gettext, m4, lxmenu-data }:
let
  lxqtSrc = fetchgit {
    url = git://github.com/lxde/lxqt;
    rev = "refs/tags/0.10.0";
    fetchSubmodules = true;
    # sha256 = "1zsghqdzwzvn4zfsqaffig17ax529gxlca89ayk7jypsxz5bl89r";
    sha256 = "14bc9zmrjq9mclg2syc9wqza8mc6alci8y09r37i6afjlbcapq9y";
    name = "lxqt";
  };
  lxqt_paths = [
    autogen pkgconfig libconfig
    liboobs
    libfm
    menu-cache libexif automake openbox which xlibs.libXft.dev pango
    imlib2
    xlibs.libICE.dev
    xlibs.libXext.dev
    xlibs.xextproto
    xlibs.xproto
    xlibs.fixesproto alsaPlugins libpulseaudio
    xlibs.libXrender.dev
    xlibs.libXrender
    xlibs.xcbutil.dev
    xlibs.damageproto
    xlibs.renderproto
    xlibs.compositeproto
    polkit.dev
    stdenv.glibc
    freetype
    fontconfig libxml2 autoconf
    kde5.polkit-kde-agent
    polkit-qt.dev
    xorg.kbproto

    kde5.kwindowsystem.dev xorg.libxcb.dev xlibs.libX11 xlibs.libX11.dev
    qtbase.dev
    qtx11extras.dev qttools.dev xorg.libxcb xlibs.libXcursor.dev
    xlibs.libXcursor zlib.dev xlibs.libXfixes.dev zlib xlibs.libXfixes
    glib.out
    glib.dev
    kde5.kguiaddons.dev
    xlibs.libXcomposite.dev
    xlibs.libXcomposite
    xlibs.libXau.dev xlibs.libXdmcp.dev
    xlibs.libXdamage.dev
    xlibs.libXdamage
    xlibs.libpthreadstubs
    xlibs.libSM.dev
    gnome.gtk_doc
    libtool
    gnum4 m4
    intltool
    gettext
    lxmenu-data
  ];


  lxqt = qt5.callPackage ./default.nix { inherit liboobs; };
  liboobs = callPackage ./liboobs.nix { inherit system-tools-backends; };
  system-tools-backends = callPackage ./system-tools-backends.nix { };
  lxqt-connman-applet = callPackage ./lxqt-connman-applet.nix { };

  buildLxQt =
    { name, src ? null, buildInputs ? [], preConfigure ? "", preInstall ? "", substituteInstallPaths ? [] }:
    stdenv.mkDerivation ({
      inherit name;
      preConfigure = ''
        export USE_QT5=ON
        export NIX_CFLAGS_COMPILE=" $NIX_CFLAGS_COMPILE -I${libqtxdg}/include/qt5xdg "
      '' + preConfigure;
      preInstall = (lib.concatMapStringsSep "\n" (p: ''
        find -name "cmake_install.cmake" -exec sh -c '
          sed -ie "s|${p}|$out|g" $1
        ' sh "{}" \;
      '') substituteInstallPaths) + preInstall;
      buildInputs = [ cmake libqtxdg liblxqt ] ++ lxqt_paths ++ buildInputs;
    } // (if src != null then {
      inherit src;
    } else {
      src = lxqtSrc;
      sourceRoot = "./lxqt/${name}";
    }));


  libqtxdg = stdenv.mkDerivation rec {
    name = "libqtxdg";
    src = lxqtSrc;
    preConfigure = ''
      export USE_QT5=ON
    '';
    sourceRoot = "./lxqt/${name}";
    buildInputs = [ cmake ] ++ lxqt_paths;
  };
  libsysstat = stdenv.mkDerivation rec {
    name = "libsysstat";
    src = lxqtSrc;
    preConfigure = ''
      export USE_QT5=ON
    '';
    sourceRoot = "./lxqt/${name}";
    buildInputs = [ cmake ] ++ lxqt_paths;
  };
  liblxqt = stdenv.mkDerivation rec {
    name = "liblxqt";
    src = lxqtSrc;
    sourceRoot = "./lxqt/${name}";
    buildInputs = [ cmake libqtxdg ] ++ lxqt_paths;
    preConfigure = ''
      export USE_QT5=ON
      sed -e '/lxqtnotification.h/ i #include <QObject>' -i ./lxqtnotification.cpp
      sed -e '/lxqtglobals.h/ i #include <QObject>' -i ./lxqtnotification.h
      export NIX_CFLAGS_COMPILE=" $NIX_CFLAGS_COMPILE -I${libqtxdg}/include/qt5xdg "
    '';
  };

in rec {
  inherit libqtxdg libsysstat liblxqt;
  lxqt-session = buildLxQt {
    name = "lxqt-session";
    substituteInstallPaths = [ liblxqt ];
  };
  lxqt-qtplugin = buildLxQt {
    name = "lxqt-qtplugin";
    substituteInstallPaths = [ qtbase.out ];
  };
  lxqt-globalkeys = buildLxQt {
    name = "lxqt-globalkeys";
    substituteInstallPaths = [ liblxqt ];
  };
  lxqt-notificationd = buildLxQt {
    name = "lxqt-notificationd";
    substituteInstallPaths = [ liblxqt ];
  };
  lxqt-about = buildLxQt {
    name = "lxqt-about";
  };
  lxqt-common = buildLxQt {
    name = "lxqt-common";
    substituteInstallPaths = [ qtbase.out liblxqt ];
    preConfigure = ''
      substituteInPlace config/CMakeLists.txt \
        --replace ' ''${LXQT_ETC_XDG_DIR}' " $out/etc/xdg"
      substituteInPlace autostart/CMakeLists.txt \
        --replace "/etc/xdg/autostart" "$out/etc/xdg/autostart"
      substituteInPlace xsession/CMakeLists.txt \
        --replace "/usr/share/" "$out/usr/share/"
    '';
  };
  lxqt-config = buildLxQt {
    name = "lxqt-config";
    substituteInstallPaths = [ liblxqt ];
    preConfigure = ''
      sed -e '/#include <QStringList>/ i #include <QObject>' -i ./lxqt-config-monitor/monitor.h
      substituteInPlace src/CMakeLists.txt \
        --replace "/etc/xdg/menus/" "$out/etc/xdg/menus/"
    '';
  };
  lxqt-admin = buildLxQt {
    name = "lxqt-admin";
    substituteInstallPaths = [ liblxqt ];
  };
  lxqt-openssh-askpass = buildLxQt {
    name = "lxqt-openssh-askpass";
    substituteInstallPaths = [ liblxqt ];
  };
  lxqt-panel = buildLxQt {
    name = "lxqt-panel";
    buildInputs = [ lxqt-globalkeys libsysstat liblxqt-mount ];
    substituteInstallPaths = [ qtbase.out liblxqt ];
  };
  lxqt-policykit = buildLxQt {
    name = "lxqt-policykit";
    substituteInstallPaths = [ liblxqt ];
  };
  lxqt-powermanagement = buildLxQt {
    name = "lxqt-powermanagement";
    substituteInstallPaths = [ liblxqt ];
  };
  lxqt-runner = buildLxQt {
    name = "lxqt-runner";
    buildInputs = [ lxqt-globalkeys ];
    # substituteInstallPaths = [ "${liblxqt}/share/lxqt-qt5/translations/lxqt-runner" ];  # not cool!!
    preInstall = ''
      sed -ie "s|${liblxqt}/share/lxqt-qt5/translations/lxqt-runner|$out/share/lxqt-qt5/translations/lxqt-runner|g" cmake_install.cmake
    '';
  };
  pcmanfm-qt = buildLxQt {
    name = "pcmanfm-qt";
  };
  liblxqt-mount = buildLxQt {
    name = "liblxqt-mount";
  };
  compton-conf = buildLxQt {
    name = "compton-conf";
  };
  obconf-qt = buildLxQt {
    name = "obconf-qt";
  };
}
