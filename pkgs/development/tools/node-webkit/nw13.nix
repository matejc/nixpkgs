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
  version = "0.13.0";

  src = fetchurl {
    url = "http://dl.nwjs.io/v${version}/alpha2/nwjs-v${version}-alpha2-linux-${bits}.tar.gz";
    sha256 = if bits == "x64" then
      "0ad98k0zpa43yr0b58cpsxq90ldgin7l7kii9l7g359d2v0l6p29" else
      "";
  };

  installPhase = ''
    mkdir -p $out/share/nwjs
    cp -R * $out/share/nwjs

    ls -lah $out/share/nwjs

    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" $out/share/nwjs/nw
    # patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" $out/share/nwjs/nwjc

    patchelf --set-rpath "${nwEnv}/lib:${nwEnv}/lib64:$out/share/nwjs" $out/share/nwjs/nw
    # patchelf --set-rpath "${nwEnv}/lib:${nwEnv}/lib64:$out/share/nwjs" $out/share/nwjs/nwjc

    mkdir -p $out/bin
    ln -s $out/share/nwjs/nw $out/bin
    # ln -s $out/share/nwjs/nwjc $out/bin
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
