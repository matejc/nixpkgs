{ stdenv, fetchgit, e20, pkgconfig, lib, mpd_clientlib, gdbm, libcap
, automake, autoconf, gettext, libtool }:
# Prerequirement:
# services {
#   mpd.enable = true;
#   mpd.musicDirectory = "/path/to/music";
#   mpd.network.host = ''"/var/lib/mpd/socket"'';
#   dbus.packages = [ pkgs.e20.empc ];
# };
stdenv.mkDerivation rec {
  name = "empc-${version}";
  version = "0.99.0.639";
  src = fetchgit {
    url = "git://git.enlightenment.org/apps/empc.git";
    rev = "85fc2cb869b04c44514d1bfc2ca70881b39fe795";
    sha256 = "00cillnaydjz2yds4cnz6ihfzhx9sr7x810fzpfrxhv0lg3bx44v";
  };
  buildInputs = [ pkgconfig mpd_clientlib e20.efl e20.evas e20.elementary
    gdbm libcap automake autoconf gettext libtool ];
  NIX_CFLAGS_COMPILE = [
    "-I${e20.efl}/include/edje-1"
    "-I${e20.efl}/include/eio-1"
    "-I${e20.efl}/include/eo-1"
    "-I${e20.efl}/include/ecore-evas-1"
    "-I${e20.efl}/include/ecore-imf-1"
    "-I${e20.efl}/include/ecore-file-1"
    "-I${e20.efl}/include/ecore-input-1"
    "-I${e20.efl}/include/ethumb-client-1"
    "-I${e20.efl}/include/ethumb-1"
  ];
  configurePhase = ''
    ./autogen.sh
    ./configure --prefix=$out
  '';
  meta = {
    description = "Client for MPD written using EFL, its focus is speed-of-use and minimalism";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.gpl3;
  };
}
