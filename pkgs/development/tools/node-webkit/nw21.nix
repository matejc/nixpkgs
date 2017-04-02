{ stdenv, fetchurl, buildEnv
, xorg, alsaLib, dbus, glib, gtk2, atk, pango, freetype, fontconfig
, gdk_pixbuf, cairo, zlib, nss, nssTools, nspr, gconf, expat, systemd, libcap
, libnotify, cups }:
let
  bits = "x64";

  nwEnv = buildEnv {
    name = "nwjs-env";
    paths = [
      xorg.libX11 xorg.libXrender glib gtk2 atk pango cairo gdk_pixbuf
      freetype fontconfig xorg.libXcomposite alsaLib xorg.libXdamage
      xorg.libXext xorg.libXfixes nss nspr gconf expat dbus
      xorg.libXtst xorg.libXi xorg.libXcursor xorg.libXrandr libcap
      libnotify cups xorg.libxcb xorg.libXScrnSaver
    ];

    extraOutputsToInstall = [ "lib" "out" ];
  };

in stdenv.mkDerivation rec {
  name = "nwjs-${version}";
  version = "0.21.4";

  src = fetchurl {
    url = "http://dl.nwjs.io/v${version}/nwjs-v${version}-linux-${bits}.tar.gz";
    sha256 = "155zy6q4yc3kfhpwxsdcfqxf3g7jgsq1d76n6sjr0ibi4628b9y5";
  };

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    mkdir -p $out/share/nwjs
    cp -R * $out/share/nwjs/

    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" $out/share/nwjs/nw

    ln -s ${systemd.lib}/lib/libudev.so $out/share/nwjs/libudev.so.0

    patchelf --set-rpath "${nwEnv}/lib:${nwEnv}/lib64:${stdenv.lib.makeLibraryPath [ stdenv.cc.cc ]}:$out/share/nwjs:$out/share/nwjs/lib" $out/share/nwjs/lib/libnw.so
    patchelf --set-rpath "${nwEnv}/lib:${nwEnv}/lib64:${stdenv.lib.makeLibraryPath [ stdenv.cc.cc ]}:$out/share/nwjs:$out/share/nwjs/lib" $out/share/nwjs/lib/libnode.so
    patchelf --set-rpath "${nwEnv}/lib:${nwEnv}/lib64:${stdenv.lib.makeLibraryPath [ stdenv.cc.cc ]}:$out/share/nwjs:$out/share/nwjs/lib" $out/share/nwjs/lib/libffmpeg.so
    patchelf --set-rpath "${nwEnv}/lib:${nwEnv}/lib64:${stdenv.lib.makeLibraryPath [ stdenv.cc.cc ]}:$out/share/nwjs:$out/share/nwjs/lib" $out/share/nwjs/nw

    mkdir -p $out/bin
    ln -s $out/share/nwjs/nw $out/bin
  '';

  meta = with stdenv.lib; {
    description = "An app runtime based on Chromium and node.js";
    homepage = http://nwjs.io/;
    platforms = ["x86_64-linux"];
    maintainers = [ maintainers.matejc ];
    license = licenses.bsd3;
  };
}
