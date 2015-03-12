{ stdenv, fetchgit, autogen, cmake, qt5, pkgconfig, libconfig, kde5, xlibs
, liboobs, polkit_qt5, libfm, menu-cache, libexif, lib, automake, xorg
, openbox, which, pango, imlib2, makeWrapper, glib }:
let
  lxqt = stdenv.mkDerivation rec {
    name = "lxqt-${version}";
    version = "0.9.0";

    src = fetchgit {
      url = git://github.com/lxde/lxqt;
      rev = "refs/tags/${version}";
      fetchSubmodules = true;
      sha256 = "1wj6vw5lf0dshqygnf841jnyyihdnx48adc06q9jwypjbncbagfa";
    };

    buildInputs = [ autogen cmake qt5 pkgconfig libconfig
      kde5.kwindowsystem xlibs.libX11 xlibs.libXcursor liboobs kde5.kguiaddons
      kde5.polkit-kde-agent polkit_qt5 xlibs.libpthreadstubs libfm xlibs.libXdmcp
      menu-cache libexif automake xorg.libxcb openbox which xlibs.libXft pango
      imlib2 makeWrapper ];

    configurePhase = ''
      export CMAKE_BUILD_TYPE=release
      export USE_QT5=ON
      export LXQT_PREFIX=$out
      export CMAKE_INSTALL_PREFIX=$out
      export LIB_SUFFIX=${lib.optionalString stdenv.is64bit "64"}
      export CMAKE_PREFIX_PATH="$out:${qt5}:$CMAKE_PREFIX_PATH"

      substituteInPlace build_all_cmake_projects.sh --replace "sudo" ""
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

      ${lib.optionalString stdenv.is64bit ''
        find . -iname "*.pc.in" -exec sed -ir 's|exec_prefix}/lib$|exec_prefix}/lib64|g' "{}" \;
        export NIX_LDFLAGS=" $NIX_LDFLAGS -L$out/lib64 "
        export PKG_CONFIG_PATH="${openbox}/lib/pkgconfig:$out/lib64/pkgconfig:$PKG_CONFIG_PATH"
      ''}
      export LD_LIBRARY_PATH="${xorg.libxcb}/lib:$LD_LIBRARY_PATH"
    '';

    buildPhase = ''
      ./build_all.sh
    '';

    installPhase = ''
      for executable in $out/bin/*
      do
        wrapProgram $executable \
          --prefix "PATH" ":" "${which}/bin" \
          --prefix "LD_LIBRARY_PATH" ":" "${glib}/lib:${kde5.kwindowsystem}/lib:${xorg.libxcb}/lib:${qt5}/lib:${xlibs.libSM}/lib:${xlibs.libICE}/lib:${xlibs.libX11}/lib:${xlibs.libXext}/lib:$out/lib64:${stdenv.cc.cc}/lib"
      done
    '';
  };

in lxqt
