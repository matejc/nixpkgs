{ stdenv, fetchurl, buildEnv, zlib, glib, alsaLib, makeDesktopItem
, dbus, gtk, atk, pango, freetype, fontconfig, libgnome_keyring3, gdk_pixbuf
, cairo, cups, expat, libgpgerror, nspr, gnome3, nss, xorg, udev, libnotify
}:

let
  libPath = stdenv.lib.makeLibraryPath [
      stdenv.cc.cc zlib glib dbus gtk atk pango freetype libgnome_keyring3 nss
      fontconfig gdk_pixbuf cairo cups expat libgpgerror alsaLib nspr gnome3.gconf
      xorg.libXrender xorg.libX11 xorg.libXext xorg.libXdamage xorg.libXtst
      xorg.libXcomposite xorg.libXi xorg.libXfixes libnotify xorg.libXrandr
      xorg.libXcursor
  ];
  desktopItem = makeDesktopItem {
    name = "LightTable";
    exec = "light";
    comment = "LightTable";
    desktopName = "LightTable";
    genericName = "the next generation code editor";
  };
in
assert stdenv.system == "x86_64-linux";

stdenv.mkDerivation rec {
  name = "lighttable-${version}";
  version = "0.8.0-alpha";

  src =
      fetchurl {
        name = "LightTableLinux64.tar.gz";
        url = "https://github.com/LightTable/LightTable/releases/download/${version}/${name}-linux.tar.gz";
        sha256 = "0xfd37wrpnas8y1w3szxqydmav5sg2ly3zf7lf1jyypn7q58lj85";
      };

  phases = [ "installPhase" ];

  installPhase = ''
    tar xf ${src}
    mkdir -p $out/bin
    mv ./${name}-linux/* $out/bin

    patchelf \
      --interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      --set-rpath ${libPath}:${libPath}/lib64:$out/bin \
      $out/bin/LightTable

    substituteInPlace $out/bin/light \
        --replace "/usr/lib/x86_64-linux-gnu" "${udev}/lib"

    mkdir -p "$out"/share/applications
    cp "${desktopItem}/share/applications/LightTable.desktop" "$out"/share/applications/
  '';

  meta = with stdenv.lib; {
    description = "the next generation code editor";
    homepage = http://www.lighttable.com/;
    license = licenses.gpl3;
  };
}
