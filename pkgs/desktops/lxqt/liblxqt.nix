{ stdenv, fetchgit, cmake, qt5, libqtxdg, kde5 }:
let

in stdenv.mkDerivation rec {
  name = "liblxqt-${version}";
  version = "0.9.0";

  src = fetchgit {
    url = git://github.com/lxde/liblxqt;
    rev = "refs/tags/${version}";
    sha256 = "179mh4v8sll0h5ga5fkbjimp61dqpdj6x8aa49q3fsf7m5dm03ll";
  };

  buildInputs = [ cmake qt5 libqtxdg kde5.kwindowsystem ];

  configurePhase = ''
    export USE_QT5=ON
    cmake -DCMAKE_INSTALL_PREFIX=$out
  '';
}
