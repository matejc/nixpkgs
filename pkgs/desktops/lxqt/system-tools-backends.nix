{ stdenv, fetchurl, intltool, pkgconfig, dbus, dbus_glib, gnome3 }:
stdenv.mkDerivation rec {
  name = "system-tools-backends-${version}";
  version = "2.8.3";

  src = fetchurl {
    url = "http://system-tools-backends.freedesktop.org/downloads/2.8/${name}.tar.gz";
    sha256 = "04yw8n4dk146l45yhmiciamgfnycagxmj06p178brgkiy6dami83";
  };

  buildInputs = [ intltool pkgconfig dbus dbus_glib gnome3.glib ];
}
