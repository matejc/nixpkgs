{ stdenv, fetchgit, cmake, qt5 }:
stdenv.mkDerivation rec {
  name = "libqtxdg-${version}";
  version = "1.1.0";

  src = fetchgit {
    url = git://github.com/lxde/libqtxdg;
    rev = "refs/tags/${version}";
    sha256 = "116xgssgq3qn54yi3f33zggmj6086mlhkhpirq7vi39v15nf4z0p";
  };

  buildInputs = [ cmake qt5 ];

  configurePhase = ''
    export USE_QT5=ON
    cmake -DCMAKE_INSTALL_PREFIX=$out
  '';
}
