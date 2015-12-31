{ stdenv, fetchgit, pkgconfig, e20, gettext, automake, autoconf
, subversionClient, libtool, gdbm, libcap }:
stdenv.mkDerivation rec {
  name = "ephoto-${version}";
  version = "20150125";
  src = fetchgit {
    url = "git://git.enlightenment.org/apps/ephoto.git";
    rev = "f74f2b421ff6aaef40a9805042cb1f14730cad62";
    sha256 = "1lid3826g5k5dzfsr1mva1bnnb90s3gczir65izm08rwx2a9xxd9";
  };
  buildInputs = [ pkgconfig e20.efl gettext automake autoconf subversionClient
    libtool e20.elementary gdbm libcap ];
  NIX_CFLAGS_COMPILE = [ "-I${e20.efl}/include/eina-1"
    "-I${e20.efl}/include/eina-1/eina" "-I${e20.efl}/include/eet-1"
    "-I${e20.efl}/include/evas-1" "-I${e20.efl}/include/eo-1"
    "-I${e20.efl}/include/ecore-1" "-I${e20.efl}/include/ecore-evas-1"
    "-I${e20.efl}/include/ecore-input-1" "-I${e20.efl}/include/ecore-imf-1"
    "-I${e20.efl}/include/ecore-con-1" "-I${e20.efl}/include/edje-1"
    "-I${e20.efl}/include/eldbus-1" "-I${e20.efl}/include/ethumb-1"
    "-I${e20.efl}/include/eio-1" ];
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
