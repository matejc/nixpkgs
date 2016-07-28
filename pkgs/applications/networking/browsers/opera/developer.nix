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
  version = "40.0.2301.0";

  src =
    if stdenv.system == "x86_64-linux" then
      fetchurl {
        url = "${mirror}/${version}/linux/opera-developer_${version}_amd64.deb";
        sha256 = "1yj74ks0yypyx49k9jdv8pib2wk21rf1jk6sw4a85ppbhd0iha9n";
      }
    else if stdenv.system == "i686-linux" then
      fetchurl {
        url = "${mirror}/${version}/linux/opera-developer_${version}_i386.deb";
        sha256 = "fc736604a27c5283727dfe4bc4c69bb067f28ce4d77216caddfa843df39c07ec";
      }
    else throw "Opera-developer is not supported on ${stdenv.system} (only x86_64 and i686 linux is supported)";

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
      systemd glib gtk2 gtk3 pango gdk_pixbuf cairo atk libnotify
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
  };
}
