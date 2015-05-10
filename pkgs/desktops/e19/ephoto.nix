{ stdenv, fetchgit, pkgconfig, e19, gettext, automake, autoconf
, subversionClient, libtool, gdbm, libcap }:
stdenv.mkDerivation rec {
  name = "ephoto-${version}";
  version = "20150407";
  src = fetchgit {
    url = "git://git.enlightenment.org/apps/ephoto.git";
    rev = "d5fa0ec3065369f430c8f0c6e87cfb69d1a605e9";
    sha256 = "1468482ik68psynvyrvl1lx7fidpc47s7kca75rdm3marhj7dba9";
  };
  buildInputs = [ pkgconfig e19.efl gettext automake autoconf subversionClient
    libtool e19.elementary gdbm libcap ];
  NIX_CFLAGS_COMPILE = [ "-I${e19.efl}/include/eina-1"
    "-I${e19.efl}/include/eina-1/eina" "-I${e19.efl}/include/eet-1"
    "-I${e19.efl}/include/evas-1" "-I${e19.efl}/include/eo-1"
    "-I${e19.efl}/include/ecore-1" "-I${e19.efl}/include/ecore-evas-1"
    "-I${e19.efl}/include/ecore-input-1" "-I${e19.efl}/include/ecore-imf-1"
    "-I${e19.efl}/include/ecore-con-1" "-I${e19.efl}/include/edje-1"
    "-I${e19.efl}/include/eldbus-1" "-I${e19.efl}/include/ethumb-1"
    "-I${e19.efl}/include/eio-1" "-I${e19.efl}/include/emile-1"
    "-I${e19.efl}/include/ecore-file-1" "-I${e19.efl}/include/ethumb-client-1" ];
  configurePhase = ''
    ./autogen.sh --prefix=$out
  '';
  installPhase = ''
    mkdir -p $out/bin
    cp -r ./src/bin $out/share
    ln -s $out/share/ephoto $out/bin
  '';
  meta = {
    description = "Ephoto Image Viewer/Editor/Manipulator/Slideshow creator";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd3;
  };
}
