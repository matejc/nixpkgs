{ stdenv, cmake, fetchgit, SDL, SDL_image, mesa_glu, findutils }:
let
  version = "0.1.2";
in
stdenv.mkDerivation {
  name = "fifechan-${version}";

  src = fetchgit {
    url = "git://github.com/fifengine/fifechan";
    rev = "refs/tags/${version}";
    sha256 = "1szfc54l7q3snqsjrd3c08wa3m1j1pbpzzjcgg8srswckydf3pbj";
  };

  buildInputs = [ cmake SDL SDL_image mesa_glu ];

  configurePhase = ''
    cmake -DCMAKE_INSTALL_PREFIX=$out .
  '';

  postInstall = ''
    mkdir -p $out/lib/pkgconfig

    substitute ./src/opengl/fifechan_opengl.pc.in $out/lib/pkgconfig/fifechan_opengl.pc \
      --replace '@prefix@' "$out" \
      --replace '@libdir@' "$out/lib" \
      --replace '@VERSION@' "${version}"

    substitute ./src/sdl/fifechan_sdl.pc.in $out/lib/pkgconfig/fifechan_sdl.pc \
      --replace '@prefix@' "$out" \
      --replace '@libdir@' "$out/lib" \
      --replace '@VERSION@' "${version}"

    cat <<EOF > $out/lib/pkgconfig/fifechan.pc
    prefix=$out
    exec_prefix=$out
    libdir=$out/lib
    includedir=$out/include

    Name: fifechan
    Description: A portable C++ GUI library designed for games using Allegro, HGE, OpenGL, OpenLayer and/or SDL.
    Version: ${version}
    Requires: sdl
    Conflicts:
    Libs: -L$out/lib -lfifechan
    Cflags: -I$out/include
    EOF
  '';

  meta = {
    description = "Fifechan is a C++ GUI library designed for games";
    license = stdenv.lib.licenses.lgpl21;
    homepage = "https://github.com/fifengine/fifechan";
    maintainers = [ stdenv.lib.maintainers.matejc ];
    platforms = stdenv.lib.platforms.linux;
  };
}
