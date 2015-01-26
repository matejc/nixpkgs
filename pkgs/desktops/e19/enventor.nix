{ stdenv, fetchurl, e19, pkgconfig }:
stdenv.mkDerivation rec {
  name = "enventor-${version}";
  version = "0.4.1";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/apps/enventor/${name}.tar.gz";
    sha256 = "1x3q3jwk4wc59php4gbnza8w57np6mm9rx8r6w8j6b8pwnkpn4k8";
  };
  buildInputs = [ e19.efl pkgconfig e19.elementary ];
  NIX_CFLAGS_COMPILE = [
    "-I${e19.efl}/include/ecore-evas-1"
    "-I${e19.efl}/include/ecore-imf-1"
    "-I${e19.efl}/include/ecore-con-1"
    "-I${e19.efl}/include/ecore-input-1"
    "-I${e19.efl}/include/eldbus-1"
    "-I${e19.efl}/include/ethumb-client-1"
    "-I${e19.efl}/include/ethumb-1"
  ];
  meta = {
    description = "EDC editor with some convenient functions";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd2;
  };
}
