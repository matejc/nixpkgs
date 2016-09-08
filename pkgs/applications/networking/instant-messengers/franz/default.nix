{ stdenv, fetchurl, makeWrapper, xorg, gnome, atk, cairo, fontconfig, expat
, freetype, libnotify, glib, dbus, nss, nspr, alsaLib, ffmpeg, cups, systemd
, libappindicator-gtk2, libappindicator-gtk3, gtk2, gtk3 }:
let
  rpath = stdenv.lib.makeSearchPathOutput "out" "lib" [
    gnome.gtk xorg.libX11 stdenv.cc.cc.lib atk cairo gnome.pango fontconfig.lib
    freetype libnotify gnome.gdk_pixbuf glib dbus.lib xorg.libXi xorg.libXcursor
    xorg.libXdamage xorg.libXext xorg.libXrandr xorg.libXcomposite
    xorg.libXfixes xorg.libXrender xorg.libXtst nss gnome.GConf nspr alsaLib
    ffmpeg cups expat systemd libappindicator-gtk2 libappindicator-gtk3 gtk2
    gtk3 xorg.libXScrnSaver
  ];
in
stdenv.mkDerivation rec {
  name = "franz-${version}";
  version = "4.0.4";

  src = fetchurl {
    url = "https://github.com/imprecision/franz-app/releases/download/${version}/Franz-linux-x64-${version}.tgz";
    sha256 = "0ssym0jfrig474g6j67g1jfybjkxnyhbqqjvrs8z6ihwlyd3rrk5";
  };

  sourceRoot = ".";

  unpackCmd = "tar -xzf $curSrc";

  buildInputs = [ makeWrapper ];

  installPhase = ''
    mkdir -p $out/share/franz
    mkdir -p $out/bin

    cp -r * $out/share/franz

    for file in $(find $out -type f ); do
        patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" "$file" || true
        patchelf --set-rpath ${rpath}:$out/share/franz $file || true
    done

    ln -s ${systemd}/lib/libudev.so.1 $out/share/franz/libudev.so.0

    ln -s $out/share/franz/Franz $out/bin/Franz
  '';

  meta = {
    description = "Franz is a free messaging app";
    longDescription = ''
        Franz is a free messaging app / former Emperor of Austria and combines
        chat & messaging services into one application. He currently supports
        Slack, WhatsApp, WeChat, HipChat, Facebook Messenger, Telegram,
        Google Hangouts, GroupMe, Skype and many more.
    '';
    homepage = http://meetfranz.com/;
    maintainers = [ stdenv.lib.maintainers.matejc ];
    platforms = [ "x86_64-linux" ];
  };
}
