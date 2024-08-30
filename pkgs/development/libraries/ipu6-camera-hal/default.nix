{ lib
, stdenv
, fetchFromGitHub

# build
, cmake
, pkg-config

# runtime
, expat
, ipu6-camera-bins
, libtool
, gst_all_1

# Pick one of
# - ipu6 (Tiger Lake)
# - ipu6ep (Alder Lake)
# - ipu6epmtl (Meteor Lake)
, ipuVersion ? "ipu6"
}:
let
  ipuTarget = {
    "ipu6" = "ipu_tgl";
    "ipu6ep" = "ipu_adl";
    "ipu6epmtl" = "ipu_mtl";
  }.${ipuVersion};
in
stdenv.mkDerivation rec {
  pname = "${ipuVersion}-camera-hal";
  version = "1.0.1-nex-v6.6";

  src = fetchFromGitHub {
    owner = "intel";
    repo = "ipu6-camera-hal";
    rev = "refs/tags/v${version}";
    hash = "sha256-9REiuYStnDn+BUD7Twfwx2vzHj4Dny69s907W3Fg17A=";
  };

  nativeBuildInputs = [
    cmake
    pkg-config
  ];

  PKG_CONFIG_PATH = "${lib.makeLibraryPath [ ipu6-camera-bins ]}/${ipuTarget}/pkgconfig";

  cmakeFlags = [
    "-DIPU_VER=${ipuVersion}"
    # missing libiacss
    "-DUSE_PG_LITE_PIPE=ON"
    "-DCMAKE_BUILD_TYPE=Release"
    "-DCMAKE_INSTALL_PREFIX=${placeholder "out"}"
    "-DCMAKE_INSTALL_SUB_PATH=${ipuTarget}"
    "-DCMAKE_INSTALL_LIBDIR=lib"
  ];

  NIX_CFLAGS_COMPILE = [
    "-Wno-error"
  ];

  enableParallelBuilding = true;

  buildInputs = [
    expat
    ipu6-camera-bins
    libtool
    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
  ];

  postPatch = ''
    substituteInPlace src/platformdata/PlatformData.h \
      --replace '/usr/share/' "${placeholder "out"}/share/" \
      --replace '#define CAMERA_DEFAULT_CFG_PATH "/etc/camera/"' '#define CAMERA_DEFAULT_CFG_PATH "${placeholder "out"}/etc/camera/"'
  '';

  postInstall = ''
    mkdir -p $out/include/${ipuTarget}/
    cp -r $src/include $out/include/${ipuTarget}/libcamhal

    mv $out/usr/lib $out/lib
    rmdir $out/usr
  '';

  postFixup = ''
    for lib in $out/lib/*.so; do
      patchelf --add-rpath "${lib.makeLibraryPath [ ipu6-camera-bins ]}/${ipuTarget}" $lib
    done
  '';

  passthru = {
    inherit ipuVersion ipuTarget;
  };

  meta = with lib; {
    description = "HAL for processing of images in userspace";
    homepage = "https://github.com/intel/ipu6-camera-hal";
    license = licenses.asl20;
    maintainers = [ ];
    platforms = [ "x86_64-linux" ];
  };
}
