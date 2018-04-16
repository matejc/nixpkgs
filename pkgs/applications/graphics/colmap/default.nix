{ stdenv, fetchFromGitHub, cmake, boost, eigen, freeimage, glog, ceres-solver
, libGL, glew, qt5 }:
stdenv.mkDerivation rec {
    name = "colmap-${version}";
    version = "3.4";
    src = fetchFromGitHub {
        owner = "colmap";
        repo = "colmap";
        rev = "refs/tags/${version}";
        sha256 = "12ikq1p8mk2ykip5irdqmiam64zqmkc1jzks1w5qxizs8z6fad2w";
    };
    nativeBuildInputs = [ cmake ];
    buildInputs = [ boost eigen freeimage glog ceres-solver libGL glew qt5.qtbase ];
    cmakeFlags = [ "-DBOOST_STATIC=OFF" ];
}
