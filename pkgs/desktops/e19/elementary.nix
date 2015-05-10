{ stdenv, fetchurl, pkgconfig, e19, libcap, gdbm, libdrm }:
stdenv.mkDerivation rec {
  name = "elementary-${version}";
  version = "1.14.0";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/libs/elementary/${name}.tar.gz";
    sha256 = "03h9sv5c3473wxf7hcimdf80d2phxl81yv0kzngx4g1b6cdwl1ma";
  };
  buildInputs = [ pkgconfig e19.efl gdbm ] ++ stdenv.lib.optionals stdenv.isLinux [ libcap ];
  NIX_CFLAGS_COMPILE = [ "-I${e19.efl}/include/ethumb-1" "-I${e19.efl}/include/efl-1"
    "-I${e19.efl}/include/emile-1" "-I${libdrm}/include/libdrm"
    "-I${e19.efl}/include/eeze-1" ];
  enableParallelBuilding = true;
  meta = {
    description = "Widget set/toolkit";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc tstrobel ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.lgpl2;
  };
}
