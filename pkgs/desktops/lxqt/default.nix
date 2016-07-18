{ stdenv, fetchgit, autogen, cmake, qtbase, pkgconfig, libconfig, xlibs
, liboobs, libfm, menu-cache, libexif, lib, automake, xorg, kde5, polkit-qt
, openbox, which, pango, imlib2, makeWrapper, glib, buildEnv, zlib, qtx11extras
, alsaPlugins, libpulseaudio, polkit, freetype, fontconfig, libxml2, autoconf
, qttools }:
let
  lxqt_deps = "${lxqt_env.outPath}";
  lxqt_env = buildEnv {
    name = "lxqt-env";
    paths = [ autogen cmake pkgconfig libconfig
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
      glib glib.dev kde5.kguiaddons.dev
      xlibs.libXcomposite.dev
      xlibs.libXcomposite
      xlibs.libXau.dev xlibs.libXdmcp.dev
      xlibs.libXdamage.dev
      xlibs.libXdamage
      xlibs.libpthreadstubs
      xlibs.libSM.dev ];
    pathsToLink = [ "/" ];
    ignoreCollisions = true;
  };

  lxqt = stdenv.mkDerivation rec {
    name = "lxqt-${version}";
    version = "0.10.0";

    src = fetchgit {
      url = git://github.com/lxde/lxqt;
      rev = "refs/tags/${version}";
      fetchSubmodules = true;
      sha256 = "14bc9zmrjq9mclg2syc9wqza8mc6alci8y09r37i6afjlbcapq9y";
    };

    buildInputs = [ lxqt_env makeWrapper ];

    configurePhase = ''
      sed -e '/lxqtnotification.h/ i #include <QObject>' -i ./liblxqt/lxqtnotification.cpp
      sed -e '/lxqtglobals.h/ i #include <QObject>' -i ./liblxqt/lxqtnotification.h
      sed -e '/#include <QStringList>/ i #include <QObject>' -i ./lxqt-config/lxqt-config-monitor/monitor.h

      export CMAKE_BUILD_TYPE=release
      export USE_QT5=ON
      export LXQT_PREFIX=$out
      export CMAKE_INSTALL_PREFIX=$out

      export CMAKE_PREFIX_PATH="$out"

      substituteInPlace build_all_cmake_projects.sh --replace "sudo " ""
      patchShebangs build_all_cmake_projects.sh
      substituteInPlace lxqt-qtplugin/src/CMakeLists.txt \
        --replace '"''${QT_PLUGINS_DIR}' "\"$out/plugins"
      substituteInPlace lxqt-common/config/CMakeLists.txt \
        --replace ' ''${LXQT_ETC_XDG_DIR}' " $out/etc/xdg"
      substituteInPlace lxqt-common/autostart/CMakeLists.txt \
        --replace "/etc/xdg/autostart" "$out/etc/xdg/autostart"
      substituteInPlace lxqt-common/xsession/CMakeLists.txt \
        --replace "/usr/share/" "$out/usr/share/"
      substituteInPlace lxqt-config/src/CMakeLists.txt \
        --replace "/etc/xdg/menus/" "$out/etc/xdg/menus/"
      substituteInPlace lxqt-panel/panel/CMakeLists.txt \
        --replace ' ''${LXQT_ETC_XDG_DIR}' " $out/etc/xdg"
      substituteInPlace lxqt-config/liblxqt-config-cursor/CMakeLists.txt \
        --replace ' ''${X11_Xcursor_LIB}' " ${lxqt_env}/lib/libXcursor.so"

      substituteInPlace lxqt-panel/CMakeLists.txt \
        --replace "setByDefault(VOLUME_USE_ALSA Yes)" "setByDefault(VOLUME_USE_ALSA No)"

      export XCOMPOSITE=${lxqt_deps}/lib
      export XDAMAGE=${lxqt_deps}/lib
      export XRANDER=${lxqt_deps}/lib
      export XEXTPROTO=${lxqt_deps}/lib

      export XFIXES=${lxqt_deps}/lib

      export OPENBOX=${lxqt_deps}/lib

      # remove "false negatives" and include them elsewhere
      find . -name "CMakeLists.txt" -exec sed -ir "s|find_package(X11 REQUIRED)||g" '{}' \;
      find . -name "CMakeLists.txt" -exec sed -ir "s|find_package(ZLIB REQUIRED)||g" '{}' \;

      export NIX_LDFLAGS=" $NIX_LDFLAGS -L${lxqt_deps}/lib -L$out/lib "
      export NIX_CFLAGS_COMPILE=" $NIX_CFLAGS_COMPILE -I${lxqt_deps}/include -I${lxqt_deps}/include/openbox/3.5 -I${lxqt_deps}/include/pango-1.0 -I${lxqt_deps}/include/libxml2 "

      ${lib.optionalString stdenv.is64bit ''
        #find . -iname "*.pc.in" -exec sed -ir 's|exec_prefix}/lib$|exec_prefix}/lib64|g' "{}" \;
        #export NIX_LDFLAGS=" $NIX_LDFLAGS -L$out/lib64 "
        mkdir -p $out/lib
        ln -s $out/lib $out/lib64
      ''}
      export PKG_CONFIG_PATH="${lxqt_deps}/lib/pkgconfig:$out/lib/pkgconfig:$PKG_CONFIG_PATH"

      substituteInPlace lxqt-sudo/CMakeLists.txt --replace 'find_package(lxqt REQUIRED QUIET)' 'find_package(lxqt-qt5 REQUIRED QUIET)'
    '';

    buildPhase = ''
      ./build_all.sh
    '';

    installPhase = ''
      for executable in $out/bin/*
      do
        wrapProgram $executable \
          --prefix "PATH" ":" "${which}/bin" \
          --prefix "LD_LIBRARY_PATH" ":" "${lxqt_deps}/lib:${stdenv.cc.cc}/lib:$out/lib"
      done
    '';
  };

in lxqt
