{ stdenv, fetchurl, which, libtool, automake, autoconf, pkgconfig, mono
, gtk-sharp-3_0, notify-sharp, file, webkit2gtk-sharp, makeWrapper, gvfs, glib
, gnome3, dbus-sharp-glib-2_0, dbus-sharp-2_0 }:
stdenv.mkDerivation rec {
  name = "sparkleshare-${version}";
  version = "2.0.0";
  src = fetchurl {
    url = "https://github.com/hbons/SparkleShare/archive/${version}.tar.gz";
    sha256 = "1ghxvlqj28rsi0dsa0wk0j24dxl3sjikn3zxx4j7dqvb5jkicrwk";
  };
  buildInputs = [ which libtool automake autoconf pkgconfig mono gtk-sharp-3_0
    notify-sharp webkit2gtk-sharp makeWrapper dbus-sharp-glib-2_0 dbus-sharp-2_0 ];
  preConfigure = ''
    patchShebangs ./autogen.sh
    ./autogen.sh
    substituteInPlace ./configure \
      --replace "/usr/bin/file" "${file}/bin/file"
  '';

  postConfigure = ''
    substituteInPlace ./SparkleShare/Linux/UserInterface.cs \
      --replace '(application as GLib.Application).Run ("org.sparkleshare.SparkleShare", new string [0]);' '(application as GLib.Application).Run (0, null);'
  '';

  postInstall = ''
    wrapProgram $out/bin/sparkleshare \
      --prefix PATH : ${mono}/bin:${gvfs}/bin \
      --prefix MONO_PATH : ${gtk-sharp-3_0}/lib/mono/gtk-sharp-3.0:${webkit2gtk-sharp}/lib/mono/webkit2-sharp:${notify-sharp}/lib/mono/notify-sharp-3.0:${dbus-sharp-glib-2_0}/lib/mono/dbus-sharp-glib-2.0:${dbus-sharp-2_0}/lib/mono/dbus-sharp-2.0 \
      --prefix LD_LIBRARY_PATH : ${glib}/lib:${gnome3.gtk}/lib:${webkit2gtk-sharp}/lib:${gnome3.webkitgtk}/lib
  '';
}
