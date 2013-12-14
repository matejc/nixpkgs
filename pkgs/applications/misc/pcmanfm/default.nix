{ fetchurl, stdenv, pkgconfig, intltool, libX11, glib, pango, gtk2, libfm }:

let version = "1.1.0"; in
stdenv.mkDerivation {
  name = "pcmanfm-${version}";

  src = fetchurl {
    url = "http://downloads.sourceforge.net/sourceforge/pcmanfm/pcmanfm-${version}.tar.gz";
    sha256 = "10jm3rrvdfjkjvhjz4skjid6ka40yv0cd3kh48rqyr5d63rh2qqz";
  };

  buildInputs = [ pkgconfig intltool libX11 glib pango gtk2 libfm ];

  meta = {
    description = "An extremly fast and lightweight file manager which features tabbed browsing and user-friendly interface";

    homepage = http://pcmanfm.sourceforge.net/;

    license = "GNU General Public License";
  };
}
