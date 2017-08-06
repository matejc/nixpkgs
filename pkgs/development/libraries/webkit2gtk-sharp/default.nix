{ stdenv, fetchurl, autoconf, automake, pkgconfig, mono, gtk-sharp-3_0
, libxslt, webkitgtk, libtool }:
stdenv.mkDerivation rec {
  name = "webkit2gtk-sharp-${version}";
  version = "20170219";
  rev = "a59fd76dd730432c76b12ee6347ea66567107ab9";
  src = fetchurl {
    url = "https://github.com/hbons/webkit2-sharp/archive/${rev}.tar.gz";
    sha256 = "0flqxwqdh1cyrzgawpa6w3f8582pbh76s6l2alz7jji1gvyjpdzq";
  };
  buildInputs = [ autoconf automake pkgconfig mono gtk-sharp-3_0 libxslt
    webkitgtk libtool ];
  preConfigure = ''
    substituteInPlace Makefile.am \
      --replace 'SUBDIRS = sources sources/glue doc' 'SUBDIRS = sources sources/glue'

      substituteInPlace sources/Makefile.am \
      --replace 'gapidir = $(GAPIXMLDIR)' "gapidir = $out/share/gapi-3.0"

    ./autogen.sh
  '';
}
