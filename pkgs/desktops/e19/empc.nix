{ stdenv, fetchurl, e19, pkgconfig, lib, mpd_clientlib, gdbm, libcap }:
# Prerequirement:
# services {
#   mpd.enable = true;
#   mpd.musicDirectory = "/path/to/music";
#   mpd.network.host = ''"/var/lib/mpd/socket"'';
#   dbus.packages = [ pkgs.e19.empc ];
# };
stdenv.mkDerivation rec {
  name = "empc-${version}";
  version = "0.99.0.639";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/apps/empc/${name}.tar.gz";
    sha256 = "0qv4yj3vl8lrl9rmzgpfkxxhrqzxv1fl4ifsha5cx14qd5w4rfdy";
  };
  buildInputs = [ pkgconfig mpd_clientlib e19.efl e19.evas e19.elementary
    gdbm libcap ];
  NIX_CFLAGS_COMPILE = [
    "-I${e19.efl}/include/edje-1"
    "-I${e19.efl}/include/eio-1"
    "-I${e19.efl}/include/eo-1"
    "-I${e19.efl}/include/ecore-evas-1"
    "-I${e19.efl}/include/ecore-imf-1"
    "-I${e19.efl}/include/ecore-file-1"
    "-I${e19.efl}/include/ecore-input-1"
    "-I${e19.efl}/include/ethumb-client-1"
    "-I${e19.efl}/include/ethumb-1"
  ];
  meta = {
    description = "Client for MPD written using EFL, its focus is speed-of-use and minimalism";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.gpl3;
  };
}
