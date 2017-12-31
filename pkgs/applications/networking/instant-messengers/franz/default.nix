{ stdenv, fetchurl, makeDesktopItem, makeWrapper, dpkg, glibc
, xorg, gtk2, atk, glib, pango, gdk_pixbuf, cairo, freetype, fontconfig
, gnome2, dbus, nss, nspr, alsaLib, cups, expat, udev, libnotify, xdg_utils }:

let
  version = "5.0.0";
  versionSuffix = "beta.14";

  runtimeDeps = [
    udev libnotify
  ];
  deps = (with xorg; [
    libXi libXcursor libXdamage libXrandr libXcomposite libXext libXfixes
    libXrender libX11 libXtst libXScrnSaver libxcb
  ]) ++ [
    gtk2 atk glib pango gdk_pixbuf cairo freetype fontconfig dbus
    gnome2.GConf nss nspr alsaLib cups expat stdenv.cc.cc
  ] ++ runtimeDeps;

  desktopItem = makeDesktopItem rec {
    name = "franz";
    exec = name;
    icon = "franz";
    desktopName = name;
    genericName = "Franz messenger";
    categories = "Network;";
  };
in stdenv.mkDerivation rec {
  name = "franz-${version}-${versionSuffix}";
  src = fetchurl {
    url = "https://github.com/meetfranz/franz/releases/download/v${version}-${versionSuffix}/franz_${version}-${versionSuffix}_amd64.deb";
    sha256 = "0wza3bfh45ggjqzr95rxj4cr96mryrwsfkfgikpj9xlsk5va3xq5";
  };

  # don't remove runtime deps
  dontPatchELF = true;

  buildInputs = [ dpkg makeWrapper ];

  unpackPhase = ''
    dpkg -x $src .
  '';

  installPhase = ''
    mkdir -p $out/{lib/franz,bin,share}
    mv opt/Franz/* $out/lib/franz/
    mv usr/share/* $out/share/

    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" $out/lib/franz/franz
    # patchelf --set-rpath "$out/lib/franz:${stdenv.lib.makeLibraryPath deps}" $out/lib/franz/franz

    # provide desktop item and icon
    mkdir -p $out/share/applications $out/share/pixmaps
    ln -sf ${desktopItem}/share/applications/* $out/share/applications
  '';

  postFixup = ''
    # paxmark m $out/lib/franz/franz
    makeWrapper $out/lib/franz/franz $out/bin/franz \
      --prefix PATH : ${xdg_utils}/bin \
      --prefix LD_LIBRARY_PATH : "$out/lib/franz:${stdenv.lib.makeLibraryPath deps}"
  '';

  meta = with stdenv.lib; {
    description = "A free messaging app that combines chat & messaging services into one application";
    homepage = http://meetfranz.com;
    license = licenses.free;
    maintainers = [ maintainers.gnidorah maintainers.matejc ];
    platforms = ["x86_64-linux"];
    hydraPlatforms = [];
  };
}
