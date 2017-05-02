{ stdenv, fetchurl, zlib, libX11, libXext, libSM, libICE, libXt
, freetype, fontconfig, libXft, libXrender, libxcb, expat, libXau, libXdmcp
, libuuid, cups, xz, dpkg, curl, nss, nspr, gnome, xlibs, dbus, systemd
, gstreamer, gst_plugins_base, libxml2, alsaLib, libpulseaudio, makeWrapper
, glib, gtk2, gtk3, pango, gdk_pixbuf, cairo, atk, callPackage, libnotify
}:

assert stdenv.isLinux && stdenv.cc.cc.isGNU or false && stdenv.cc.libc != null;

let
  mirror = http://get.geo.opera.com/pub/opera-developer;

  upstream-info = (import ../chromium/update.nix {
  }).getChannel "stable";

  plugins = callPackage ../chromium/plugins.nix {
    enablePepperFlash = true;
    enableWideVine = false;
    inherit upstream-info;
  };
  flags = (import "${plugins}/nix-support/chromium-plugin.nix").flags;
in

stdenv.mkDerivation rec {
  name = "opera-developer-${version}";
  version = "42.0.2372.0";

  src =
      fetchurl {
        url = "${mirror}/${version}/linux/opera-developer_${version}_amd64.deb";
        sha256 = "0f093bgx08bcsrrr5q6hsv745ahjracypvwq7ydr22dadqbmvwgi";
      };

  dontStrip = 1;

  phases = "unpackPhase installPhase fixupPhase";

  unpackPhase = ''
    ${dpkg}/bin/dpkg-deb -x ${src} .
  '';

  installPhase = ''
    mkdir -p $out
    cp -rv ./usr/* $out
  '';

  buildInputs =
    [ stdenv.cc.cc stdenv.cc.libc zlib libX11 libXt libXext libSM libICE
      libXft freetype fontconfig libXrender libuuid expat makeWrapper
      gstreamer libxml2 gst_plugins_base curl nss nspr gnome.GConf xlibs.libXi
      xlibs.libXcursor xlibs.libXfixes xlibs.libXScrnSaver xlibs.libXcomposite
      alsaLib xlibs.libXdamage xlibs.libXtst xlibs.libXrandr dbus cups libpulseaudio
      systemd glib gtk2 gtk3 pango gdk_pixbuf cairo atk libnotify libxcb
    ];
  libPath = stdenv.lib.makeLibraryPath buildInputs;

  preFixup =
    ''
    find $out/lib -type f | while read f; do
      type=`readelf -h "$f" 2>/dev/null | grep 'Type:' | sed -e 's/ *Type: *\([A-Z]*\) (.*/\1/' || true`
      if [[ $type == "EXEC" ]]; then
        echo "patching $f executable <<"
        patchelf \
            --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
            --set-rpath "${libPath}:$out/lib/${if stdenv.system == "x86_64-linux" then "x86_64" else "i386"}-linux-gnu/opera-developer" \
            "$f"
      elif [[ $type == "DYN" ]]; then
        echo "patching $f library <<"
        patchelf --set-rpath "${libPath}:$out/lib/${if stdenv.system == "x86_64-linux" then "x86_64" else "i386"}-linux-gnu/opera-developer" "$f"
      fi
    done
    '';

  postFixup = ''
    rm $out/bin/*
    makeWrapper $out/lib/${if stdenv.system == "x86_64-linux" then "x86_64" else "i386"}-linux-gnu/opera-developer/opera-developer $out/bin/opera-developer \
      --prefix LD_LIBRARY_PATH : "${libPath}:$out/lib/${if stdenv.system == "x86_64-linux" then "x86_64" else "i386"}-linux-gnu/opera-developer" \
      --add-flags "--ppapi-flash-path=${plugins}/lib/libpepflashplayer.so"
  '';

  meta = {
    homepage = http://www.opera.com;
    description = "Opera Developer Web browser";
    license = stdenv.lib.licenses.unfree;
    platforms = ["x86_64-linux"];
  };
}
