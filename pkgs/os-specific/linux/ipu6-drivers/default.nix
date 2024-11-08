{ lib
, stdenv
, fetchFromGitHub
, ivsc-driver
, kernel
}:
let


in stdenv.mkDerivation rec {
  pname = "ipu6-drivers";
  version = "unstable-2024-10-30";

  src = fetchFromGitHub {
    owner = "intel";
    repo = "ipu6-drivers";
    rev = "19c1deddd2274016ed0b8b5eed804bb1e2f6fee7";
    hash = "sha256-ybivLegi9dCy+JVQ+jvNPXbFa0tlQ3CTV9iHE3tTXI4=";
  };

  hardeningDisable = [ "pic" "format" ];

  patches = [
    "${src}/patches/0001-v6.10-IPU6-headers-used-by-PSYS.patch"
  ];

  postPatch = ''
    cp -r ${ivsc-driver.src}/backport-include ${ivsc-driver.src}/drivers ${ivsc-driver.src}/include .
  '';

  nativeBuildInputs = kernel.moduleBuildDependencies;

  makeFlags = kernel.makeFlags ++ [
    "KERNELRELEASE=${kernel.modDirVersion}"
    "KERNEL_SRC=${kernel.dev}/lib/modules/${kernel.modDirVersion}/build"
    "INSTALL_MOD_PATH=${placeholder "out"}"
  ];

  enableParallelBuilding = true;

  installTargets = [
    "modules_install"
  ];

  meta = {
    homepage = "https://github.com/intel/ipu6-drivers";
    description = "IPU6 kernel driver";
    license = lib.licenses.gpl2Only;
    maintainers = [ ];
    platforms = [ "x86_64-linux" ];
    # requires 6.10
    broken = kernel.kernelOlder "6.10";
  };
}
