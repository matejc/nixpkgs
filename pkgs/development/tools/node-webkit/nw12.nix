{ stdenv, fetchurl, buildEnv, makeWrapper
, xlibs, alsaLib, dbus, glib, gtk, atk, pango, freetype, fontconfig
, gdk_pixbuf, cairo, zlib, nss, nssTools, nspr, gconf, expat, systemd, libcap
, libnotify, cups, libexif }:
let
  bits = if stdenv.system == "x86_64-linux" then "x64"
         else "ia32";

  nwEnv = buildEnv {
    name = "nwjs-env";
    paths = [
      xlibs.libX11 xlibs.libXrender glib gtk atk pango cairo gdk_pixbuf
      freetype fontconfig xlibs.libXcomposite alsaLib xlibs.libXdamage
      xlibs.libXext xlibs.libXfixes nss nspr gconf expat dbus stdenv.cc
      xlibs.libXtst xlibs.libXi xlibs.libXcursor xlibs.libXrandr libcap
      libnotify xlibs.libXScrnSaver cups systemd libexif
    ];
  };

in stdenv.mkDerivation rec {
  name = "nw-v${version}";
  version = "0.12.2";

  src = fetchurl {
    url = "http://dl.nwjs.io/v${version}/nwjs-v${version}-linux-${bits}.tar.gz";
    sha256 = if bits == "x64" then
      "0gbhw2h2736v0yaw783i2w5kj3kfcf1r459vz1sfq8dvi6pxrys3" else
      "0j3r05j8x37g4x7ymdvxmn26ly8gdw54afdyd5c069hxxdz8lflp";
  };

  installPhase = ''
    mkdir -p $out/share/nwjs
    cp -R * $out/share/nwjs

    ls -lah $out/share/nwjs

    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" $out/share/nwjs/nw
    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" $out/share/nwjs/nwjc

    patchelf --set-rpath "${nwEnv}/lib:${nwEnv}/lib64" $out/share/nwjs/nw
    patchelf --set-rpath "${nwEnv}/lib:${nwEnv}/lib64" $out/share/nwjs/nwjc

    mkdir -p $out/bin
    ln -s $out/share/nwjs/nw $out/bin
    ln -s $out/share/nwjs/nwjc $out/bin
    #makeWrapper $out/share/nwjs/nw $out/bin/nw --prefix 'LD_LIBRARY_PATH' ':' '${nwEnv}/lib:${nwEnv}/lib64:$out/share/nwjs'
    #makeWrapper $out/share/nwjs/nwjc $out/bin/nwjc --prefix 'LD_LIBRARY_PATH' ':' '${nwEnv}/lib:${nwEnv}/lib64:$out/share/nwjs'
  '';

  buildInputs = [ makeWrapper ];

  meta = with stdenv.lib; {
    description = "An app runtime based on Chromium and node.js";
    homepage = https://github.com/rogerwang/node-webkit;
    platforms = ["i686-linux" "x86_64-linux"];
    maintainers = [ maintainers.offline maintainers.matejc ];
    license = licenses.bsd3;
  };
}
