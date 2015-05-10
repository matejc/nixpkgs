{ stdenv, fetchurl, zlib, libX11, libXext, libSM, libICE, libXt
, freetype, fontconfig, libXft, libXrender, libxcb, expat, libXau, libXdmcp
, libuuid, cups, xz, dpkg, curl, nss, nspr, gnome, xlibs, dbus, systemd
, gstreamer, gst_plugins_base, libxml2, alsaLib, pulseaudio, makeWrapper
, glib, gtk, pango, gdk_pixbuf, cairo, atk, callPackage
}:

assert stdenv.isLinux && stdenv.cc.cc.isGNU or false && stdenv.cc.libc != null;

let
  mirror = http://get.geo.opera.com/pub/opera-beta;

  plugins = callPackage ../chromium/plugins.nix {
    enablePepperFlash = true;
    enableWideVine = false;
    source = (callPackage ../chromium/source { useOpenSSL = false; });
  };
  flags = (import "${plugins}/nix-support/chromium-plugin.nix").flags;
in

stdenv.mkDerivation rec {
  name = "opera-beta-${version}";
  version = "30.0.1835.18";

  src =
    if stdenv.system == "x86_64-linux" then
      fetchurl {
        url = "${mirror}/${version}/linux/opera-beta_${version}_amd64.deb";
        sha256 = "048p10g26b2r0diyikz192qffyw12dfh2nk2cxjp49611a33bk8l";
      }
    else throw "Opera-beta is not supported on ${stdenv.system} (only x86_64 linux is supported)";

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
      alsaLib xlibs.libXdamage xlibs.libXtst xlibs.libXrandr dbus cups pulseaudio
      systemd glib gtk pango gdk_pixbuf cairo atk
    ];
  libPath = stdenv.lib.makeLibraryPath buildInputs
    + stdenv.lib.optionalString (stdenv.system == "x86_64-linux")
      (":" + stdenv.lib.makeSearchPath "lib64" buildInputs);

  preFixup =
    ''
    find $out/lib -type f | while read f; do
      type=$(readelf -h "$f" 2>/dev/null | grep 'Type:' | sed -e 's/ *Type: *\([A-Z]*\) (.*/\1/')
      if [ -z "$type" ]; then
        :
      elif [ $type == "EXEC" ]; then
        echo "patching $f executable <<"
        patchelf \
            --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
            --set-rpath "${libPath}" \
            "$f"
      elif [ $type == "DYN" ]; then
        echo "patching $f library <<"
        patchelf --set-rpath "${libPath}" "$f"
      else
        echo "Unknown type $type"
        exit 1
      fi
    done
    '';

  postFixup = ''
    rm $out/bin/*

    echo "#####################################"
    echo ${toString flags}

    makeWrapper $out/lib/x86_64-linux-gnu/opera-beta/opera-beta $out/bin/opera-beta \
      --prefix LD_LIBRARY_PATH : ${libPath} \
      --add-flags "${toString flags}"
  '';

  meta = {
    homepage = http://www.opera.com;
    description = "Web browser";
    license = stdenv.lib.licenses.unfree;
  };
}
