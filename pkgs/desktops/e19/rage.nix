{ stdenv, fetchurl, e19, automake, autoconf, libtool, pkgconfig, gst_all_1
, makeWrapper, lib, curl }:
stdenv.mkDerivation rec {
  name = "rage-${version}";
  version = "0.1.4";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/apps/rage/${name}.tar.gz";
    sha256 = "10j3n8crk16jzqz2hn5djx6vms5f6x83qyiaphhqx94h9dgv2mgg";
  };
  buildInputs = [ e19.elementary e19.efl automake autoconf libtool pkgconfig
    makeWrapper ];
  NIX_CFLAGS_COMPILE = [ "-I${e19.efl}/include/evas-1"
    "-I${e19.efl}/include/ecore-1"
    "-I${e19.efl}/include/eina-1"
    "-I${e19.efl}/include/eina-1/eina"
    "-I${e19.efl}/include/eet-1"
    "-I${e19.efl}/include/eo-1"
    "-I${e19.efl}/include/ecore-evas-1"
    "-I${e19.efl}/include/ecore-imf-1"
    "-I${e19.efl}/include/ecore-con-1"
    "-I${e19.efl}/include/ecore-file-1"
    "-I${e19.efl}/include/ecore-input-1"
    "-I${e19.efl}/include/eldbus-1"
    "-I${e19.efl}/include/efreet-1"
    "-I${e19.efl}/include/ethumb-client-1"
    "-I${e19.efl}/include/ethumb-1" ];
  GST_PLUGIN_PATH = lib.makeSearchPath "lib/gstreamer-1.0" [
    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-libav ];
  configurePhase = ''
    ./autogen.sh --prefix=$out
  '';
  postInstall = ''
    wrapProgram $out/bin/rage \
      --prefix GST_PLUGIN_PATH : "$GST_PLUGIN_PATH" \
      --prefix LD_LIBRARY_PATH : ${curl}/lib
  '';
  meta = {
    description = "Video + Audio player along the lines of mplayer";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd2;
  };
}
