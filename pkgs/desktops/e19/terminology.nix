{ stdenv, fetchurl, pkgconfig, e19, gst_all_1, makeWrapper, lib }:
stdenv.mkDerivation rec {
  name = "terminology-${version}";
  version = "0.8.0";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/apps/terminology/${name}.tar.gz";
    sha256 = "0a767ixackzmhb2awrhjy7q6vsivsd54wc434i617xiw095x843s";
  };
  buildInputs = [ pkgconfig e19.efl e19.elementary makeWrapper ];
  GST_PLUGIN_PATH = lib.makeSearchPath "lib/gstreamer-1.0" [
    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-libav ];
  preConfigure = ''
    export NIX_CFLAGS_COMPILE="-I${e19.efl}/include/eo-1 $NIX_CFLAGS_COMPILE"
    export NIX_CFLAGS_COMPILE="-I${e19.efl}/include/ecore-con-1 $NIX_CFLAGS_COMPILE"
    export NIX_CFLAGS_COMPILE="-I${e19.efl}/include/eldbus-1 $NIX_CFLAGS_COMPILE"
    export NIX_CFLAGS_COMPILE="-I${e19.efl}/include/ethumb-1 $NIX_CFLAGS_COMPILE"
    export NIX_CFLAGS_COMPILE="-I${e19.efl}/include/elocation-1 $NIX_CFLAGS_COMPILE"
  '';
  postInstall = ''
    wrapProgram $out/bin/terminology \
      --prefix GST_PLUGIN_PATH : "$GST_PLUGIN_PATH"
  '';
  meta = {
    description = "The best terminal emulator written with the EFL";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc tstrobel ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd2;
  };
}
