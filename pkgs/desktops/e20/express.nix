{ stdenv, fetchgit, gettext, automake, autoconf, pkgconfig, e20, gst_all_1
, makeWrapper, lib, libtool, libcap }:
stdenv.mkDerivation rec {
  name = "express-${version}";
  version = "22-12-2015";
  src = fetchgit {
    url = "git://git.enlightenment.org/apps/express.git";
    rev = "23ce92e3192e719e43570a6d1cb8dac5b7106366";
    sha256 = "17nb1zpdzkybzac9gpd4a23dwqbm1jm0kshzbqhs8ksarv2ywa1y";
  };
  buildInputs = [ pkgconfig e20.efl e20.elementary makeWrapper gettext automake
    autoconf libtool libcap ];
  GST_PLUGIN_PATH = lib.makeSearchPath "lib/gstreamer-1.0" [
    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-libav ];
  NIX_CFLAGS_COMPILE = [
    "-I${e20.efl}/include/eo-1"
  ];
  configurePhase = ''
    ./autogen.sh --prefix=$out
  '';
  postInstall = ''
    wrapProgram $out/bin/express \
      --prefix GST_PLUGIN_PATH : "$GST_PLUGIN_PATH"
  '';
  meta = {
    description = "IRC client with enhanced media capabilities";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd2;
  };
}
