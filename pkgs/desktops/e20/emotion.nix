{ stdenv, fetchurl, pkgconfig, e20, vlc }:
stdenv.mkDerivation rec {
  name = "emotion_generic_players-${version}";
  version = "1.16.0";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/libs/emotion_generic_players/${name}.tar.gz";
    sha256 = "101w13s6bynddrn9mznkiyjca8w47zq52i2y18x4l4bd1fm4zcyb";
  };
  buildInputs = [ pkgconfig e20.efl vlc ];
  NIX_CFLAGS_COMPILE = [ "-I${e20.efl}/include/eo-1" ];
  meta = {
    description = "Extra video decoders";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc tstrobel ftrvxmtrx ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd2;
  };
}
