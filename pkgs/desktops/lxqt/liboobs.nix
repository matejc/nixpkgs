{ stdenv, fetchgit, which, gnome3, pkgconfig, gtk_doc, libtool, dbus_glib
, system-tools-backends }:
stdenv.mkDerivation rec {
  name = "liboobs-${version}";
  version = "3.0.0";

  src = fetchgit {
    url = git://github.com/GNOME/liboobs;
    rev = "refs/tags/LIBOOBS_3_0_0";
    sha256 = "1qsj1i3z4gckqxqkjyhipcvrk6ka6za6b9isnq6kx32cc2zdnfjk";
  };

  buildInputs = [ which gnome3.gnome_common pkgconfig gtk_doc libtool
    gnome3.glib dbus_glib system-tools-backends ];

  preConfigure = ''
    substituteInPlace configure.in --replace "STB_REQUIRED=2.10.1" "STB_REQUIRED=${system-tools-backends.version}"
    ./autogen.sh
  '';
}
