{ stdenv, fetchurl, wxGTK, pkgconfig, gettext, gtk, glib, zlib, perl, intltool,
  libogg, libvorbis, libmad, alsaLib, libsndfile, soxr, flac, lame,
  expat, libid3tag, ffmpeg, which, python
  }:

stdenv.mkDerivation rec {
  version = "2.1.0";
  name = "audacity-${version}";

  src = fetchurl {
    url = "https://github.com/audacity/audacity/archive/Audacity-${version}.tar.gz";
    sha256 = "0af6yknhjsl5h65hcfan6v9b08818zwspmrkn0hp1m87y0d58xjd";
  };

  preConfigure = ''
    # mv lib-src lib-src-rm
    # mkdir lib-src
    # mv lib-src-rm/{Makefile*,lib-widget-extra,portaudio-v19,portmixer,portsmf,FileDialog,sbsms,libnyquist} lib-src/
    # rm -r lib-src-rm/
    substituteInPlace lib-src/lv2/build --replace "/bin/bash" "${stdenv.shell}"
    rm -r lib-src/{ffmpeg,libid3tag,expat,lame,libflac,libsoxr,libsndfile,libmad,libvorbis,libogg}
  '';

  buildInputs = [
    pkgconfig gettext wxGTK gtk expat alsaLib
    ffmpeg libsndfile soxr libid3tag
    libmad lame libvorbis flac which python
  ]; #ToDo: soundtouch, detach sbsms

  dontDisableStatic = true;
  doCheck = false;  # portaudio-v19 doesnt have target: check

  meta = {
    description = "Sound editor with graphical UI";
    homepage = http://audacity.sourceforge.net;
    license = stdenv.lib.licenses.gpl2Plus;
    platforms = with stdenv.lib.platforms; linux;
    maintainers = with stdenv.lib.maintainers; [ the-kenny ];
  };
}
