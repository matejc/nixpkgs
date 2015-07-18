{ lib, stdenv, fetchurl, runCommand, makeWrapper, xlibs, glibc, glib, gtk, atk,
  pango, gdk_pixbuf, cairo, freetype, fontconfig, nss, nspr, gnome, alsaLib,
  expat, dbus, systemd, harfbuzz, libnotify, udev, buildEnv, libcap, cups,
  libexif,
  fromCi ? true,
  build ? "652",
  version ? if fromCi then "0.3.7-2-0ac62b848" else "0.3.7.2"
}:

let
  config =
    if stdenv.system == "x86_64-linux" then
      {sys = "Linux64";
       sha256 =
          if fromCi then "1nr2zaixdr5vqynga7jig3fw9dckcnzcbdmbr8haq4a486x2nq0f"
                    else "72cd01b1cbb99d566860351b4fc4d1bd8ee31f3a9e2fca6877af172923fb4d1d";
      }
    else if stdenv.system == "i686-linux" then
      {sys = "Linux32";
       sha256 =
        if fromCi then "72cd01b1cbb99d566860351b4fc4d1bd8ee31f3a9e2fca6877af172923fb4d1d"
                  else "72cd01b1cbb99d566860351b4fc4d1bd8ee31f3a9e2fca6877af172923fb4d1d";
      }
    else throw "Unsupported system ${stdenv.system}";

  fetchurlConf =
    let
      ciBase = "https://ci.popcorntime.io/job/Popcorn-Experimental/652/artifact/build/releases/Popcorn-Time";
      relBase = "https://get.popcorntime.io/build";
    in {
      url =
        if fromCi then "${ciBase}/${lib.toLower config.sys}/Popcorn-Time-${version}-${config.sys}.tar.xz"
        else "${relBase}/Popcorn-Time-${version}-${config.sys}.tar.xz";
      sha256 = config.sha256;
    };

  nwEnv = buildEnv {
    name = "nwjs-env";
    paths = [
      xlibs.libX11 xlibs.libXrender glib gtk atk pango cairo gdk_pixbuf
      freetype fontconfig xlibs.libXcomposite alsaLib xlibs.libXdamage
      xlibs.libXext xlibs.libXfixes nss nspr expat dbus stdenv.cc
      xlibs.libXtst xlibs.libXi xlibs.libXcursor xlibs.libXrandr libcap
      libnotify xlibs.libXScrnSaver cups systemd libexif gnome.GConf harfbuzz
    ];
  };

  popcorntimePackage = stdenv.mkDerivation rec {
    name =
      if fromCi then "popcorntime-git-2015-07-07"
                else "popcorntime-${version}";
    src = fetchurl fetchurlConf;
    sourceRoot = ".";
    installPhase = ''
      mkdir -p $out
      cp -r * $out/
      patchelf --set-interpreter "${glibc}/lib/ld-linux-x86-64.so.2" \
        --set-rpath "${nwEnv}/lib" \
        $out/Popcorn-Time
      chmod +x $out/Popcorn-Time
    '';
  };
in
  runCommand "popcorntime-${version}" {
    buildInputs = [ makeWrapper ];
    meta = with stdenv.lib; {
      homepage = http://popcorntime.io/;
      description = "An application that streams movies and TV shows from torrents";
      license = stdenv.lib.licenses.gpl3;
      platforms = platforms.linux;
      maintainers = with maintainers; [ bobvanderlinden ];
    };
  }
  ''
    mkdir -p $out/bin
    makeWrapper ${popcorntimePackage}/Popcorn-Time $out/bin/popcorntime
  ''
