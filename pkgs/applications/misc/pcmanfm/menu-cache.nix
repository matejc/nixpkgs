{ fetchurl, stdenv, pkgconfig, glib }:

let version = "0.4.1"; in
stdenv.mkDerivation {
  name = "menu-cache-${version}";

  src = fetchurl {
    url = "http://downloads.sourceforge.net/sourceforge/lxde/menu-cache-${version}.tar.gz";
    sha256 = "07hrl30bk2yqa2h1la2f8ahp7n06rnvgdjqlfddvmv9z6n741aag";
  };

  buildInputs = [ pkgconfig glib ];

}
