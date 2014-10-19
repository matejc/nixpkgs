{ stdenv, scons, fetchgit, pkgconfig, python, libvorbis, openal, SDL, SDL_ttf
, SDL_image, boost, writeText, libpng, xlibs, tinyxml, fifechan, swig
, mesa_glu }:
let
  version = "0.3.5";
  boost_pc = writeText "boost.pc" ''
  prefix=${boost}
  exec_prefix=${boost}
  libdir=${boost}/lib
  includedir=${boost}/include

  Name: boost_filesystem
  Description: Boost C++ libs
  Version: 1.55.0
  Libs: -L${boost}/lib -lboost_filesystem -lboost_system
  Cflags: -I${boost}/include
  '';
in
stdenv.mkDerivation {
  name = "fifengine-${version}";

  src = fetchgit {
    url = "git://github.com/fifengine/fifengine";
    # rev = "refs/tags/${version}";
    rev = "a74b471df7edcf80dc6c64229316ac6925befd63";
    sha256 = "1w1s0f4ix32k2n85hckhn1x0d6clihkx3b1z8rwlnrlhx9728gvx";
  };

  buildInputs = [ scons pkgconfig python libvorbis openal SDL SDL_ttf SDL_image
    boost libpng xlibs.libXcursor tinyxml fifechan swig mesa_glu ];

  buildPhase = ''
    ln -s ${SDL}/lib/pkgconfig/sdl.pc ./build/linux/pkgconfig_files/SDL.pc
    ln -s ${SDL_ttf}/lib/pkgconfig/SDL_ttf.pc ./build/linux/pkgconfig_files/sdl_ttf.pc
    ln -s ${SDL_image}/lib/pkgconfig/SDL_image.pc ./build/linux/pkgconfig_files/sdl_image.pc
    ln -s ${boost_pc} ./build/linux/pkgconfig_files/boost_system.pc
    ln -s ${libpng}/lib/pkgconfig/libpng.pc ./build/linux/pkgconfig_files/png.pc
    ln -s ${xlibs.libXcursor}/lib/pkgconfig/xcursor.pc ./build/linux/pkgconfig_files/Xcursor.pc
    export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:`pwd`/build/linux/pkgconfig_files"

    export CXXFLAGS="$CXXFLAGS -I${libvorbis}/include/vorbis"

    mkdir -p $out
    scons DESTDIR=$out --python-prefix=/lib/${python.libPrefix}/site-packages install-all
  '';

  installPhase = "true";

  meta = {
    description = "FIFE is a multi-platform isometric game engine";
    license = stdenv.lib.licenses.lgpl21;
    homepage = "https://github.com/fifengine/fifengine";
    maintainers = [ stdenv.lib.maintainers.matejc ];
    platforms = stdenv.lib.platforms.linux;
  };
}
