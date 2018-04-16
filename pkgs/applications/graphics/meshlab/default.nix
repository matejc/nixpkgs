{ stdenv, fetchFromGitHub, libGLU, qtbase, qtscript, qtxmlpatterns, qmake
, vcg }:

stdenv.mkDerivation {
  name = "meshlab-20180413-beta";

  src = fetchFromGitHub {
    owner = "cnr-isti-vclab";
    repo = "meshlab";
    rev = "4ec5ed53ff06c350e57baca1dded78d81abb8b19";
    sha256 = "09y437ip6w5q36fjxzz30gdndp945gzfmm66cfj9clgbg0ajzwhv";
  };

  nativeBuildInputs = [ qmake ];

  patches = [ ];

  configurePhase = "true";

  buildPhase = ''
    cd src/external
    qmake
    make -j4
    cd ..
    qmake meshlab_full.pro
    make -j4
  '';

  hardeningDisable = [ "format" ];
  enableParallelBuilding = true;

  installPhase = ''
    mkdir -p $out/opt/meshlab $out/bin
    cp -Rv distrib/* $out/opt/meshlab
    ln -s $out/opt/meshlab/meshlab $out/bin/meshlab
    ln -s $out/opt/meshlab/meshlabserver $out/bin/meshlabserver
  '';

  buildInputs = [ libGLU qtbase qtscript qtxmlpatterns vcg ];

  meta = {
    description = "A system for processing and editing 3D triangular meshes.";
    homepage = http://www.meshlab.net/;
    license = stdenv.lib.licenses.gpl3;
    maintainers = with stdenv.lib.maintainers; [viric];
    platforms = with stdenv.lib.platforms; linux;
    broken = true; # 2018-04-11
  };
}
