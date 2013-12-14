{ fetchurl, stdenv, pkgconfig, intltool, glib, pango, gtk2, menucache }:

let version = "1.1.0"; in
stdenv.mkDerivation {
  name = "libfm-${version}";

  src = fetchurl {
    url = "http://downloads.sourceforge.net/sourceforge/pcmanfm/libfm-${version}.tar.gz";
    sha256 = "0g8bzs917vy3p1cjaqnk9mhn6f0h3nyrmi08p1q3bdbhhrc6whmr";
  };

  buildInputs = [ pkgconfig intltool glib pango gtk2 menucache ];

}
