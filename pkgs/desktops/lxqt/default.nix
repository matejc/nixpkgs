{ stdenv, fetchgit, autogen, cmake, qt5, pkgconfig, libconfig, xlibs
, liboobs, libfm, menu-cache, libexif, lib, automake, xorg, kde5
, openbox, which, pango, imlib2, makeWrapper, glib, buildEnv, zlib
, alsaPlugins, libpulseaudio, polkit, freetype, fontconfig, libxml2, autoconf }:
let
  lxqt_deps = "${lxqt_env.outPath}";
  lxqt_env = buildEnv {
    name = "lxqt-env";
    paths = [ autogen cmake qt5.full pkgconfig libconfig
      xlibs.libX11 xlibs.libXcursor liboobs
      xlibs.libpthreadstubs libfm xlibs.libXdmcp
      menu-cache libexif automake xorg.libxcb openbox which xlibs.libXft pango
      imlib2 glib xlibs.libSM xlibs.libICE xlibs.libXext xlibs.xextproto
      xlibs.libXau xlibs.xproto xlibs.kbproto zlib xlibs.libXfixes
      xlibs.fixesproto alsaPlugins libpulseaudio xlibs.libXcomposite
      xlibs.libXdamage xlibs.libXrender xlibs.xcbutil xlibs.damageproto
      xlibs.renderproto xlibs.compositeproto polkit stdenv.glibc freetype
      fontconfig libxml2 autoconf kde5.kwindowsystem kde5.kguiaddons
      kde5.polkit-kde-agent qt5.polkit-qt ];
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
      sha256 = "1xf6m9prjnc23r4zr0bnghn9x9ypddn3ahzjxwgl0rn98nbkq3li";
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
        --replace ' ''${X11_Xcursor_LIB}' " ${xlibs.libXcursor}/lib/libXcursor.so"

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
