{ stdenv, fetchurl, pkgconfig, e20, gst_all_1, makeWrapper, lib }:
stdenv.mkDerivation rec {
  name = "terminology-${version}";
  version = "0.9.1";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/apps/terminology/${name}.tar.gz";
    sha256 = "15iq24rcs4hg5naw6xdalcb940bjwykm9wn5h68hwj828ahn9f3z";
  };
  buildInputs = [ pkgconfig e20.efl e20.elementary makeWrapper ];
  GST_PLUGIN_PATH = lib.makeSearchPath "lib/gstreamer-1.0" [
    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-libav ];
  postInstall = ''
    wrapProgram $out/bin/terminology \
      --prefix GST_PLUGIN_PATH : "$GST_PLUGIN_PATH"
  '';
  meta = {
    description = "The best terminal emulator written with the EFL";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc tstrobel ftrvxmtrx ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd2;
  };
}
