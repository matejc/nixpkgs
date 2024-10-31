{ lib
, stdenv
, fetchFromGitHub
, autoPatchelfHook
, expat
, zlib
}:

stdenv.mkDerivation (finalAttrs: rec {
  pname = "ipu6-camera-bins";
  version = "1.0.0-nex-twl-pv-v6.6.50";

  src = fetchFromGitHub {
    repo = "ipu6-camera-bins";
    owner = "intel";
    rev = "refs/tags/v${version}";
    hash = "sha256-pz7WR0kYxsD0eq5xiR72Ii3ykTuMCB1V79gytrKN/gY=";
  };

  nativeBuildInputs = [
    autoPatchelfHook
    (lib.getLib stdenv.cc.cc)
    expat
    zlib
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out
    cp --no-preserve=mode --recursive \
      lib \
      include \
      $out/

    # There is no LICENSE file in the src
    # install -m 0644 -D LICENSE $out/share/doc/LICENSE

    runHook postInstall
  '';

  postFixup = ''
    for pcfile in $out/lib/pkgconfig/*.pc; do
      substituteInPlace $pcfile \
        --replace 'prefix=/usr' "prefix=$out"
    done
  '';

  meta = with lib; {
    description = "IPU firmware and proprietary image processing libraries";
    homepage = "https://github.com/intel/ipu6-camera-bins";
    license = licenses.issl;
    sourceProvenance = with sourceTypes; [
      binaryFirmware
    ];
    maintainers = [ ];
    platforms = [ "x86_64-linux" ];
  };
})
