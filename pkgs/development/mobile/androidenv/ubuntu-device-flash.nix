{ stdenv, fetchurl, buildEnv, makeWrapper, xz }:

let
  env = buildEnv {
    name = "env-ubuntu-device-flash";
    paths = [
    ];
  };
in stdenv.mkDerivation rec {
  name = "ubuntu-device-flash";

  src = fetchurl {
    url = "http://de.archive.ubuntu.com/ubuntu/pool/universe/g/goget-ubuntu-touch/ubuntu-device-flash_0.27-0ubuntu1_amd64.deb";
    sha256 = "077gsba50ji545hsbvsylvk8a7rw28g53ysi9qrnzagr58jcvgh1";
    name = "${name}.deb";
  };

  buildInputs = [ makeWrapper xz ];

  phases = [ "installPhase" "fixupPhase" ];

  installPhase = ''
    mkdir -p $out
    ar p $src data.tar.xz | tar -C $out -xJ ./usr
    mv $out/usr/* $out/

    ls -lah $out/

    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      $out/bin/ubuntu-device-flash
    # ldd $out/bin/ubuntu-device-flash
    # wrapProgram $out/bin/ubuntu-device-flash \
      # --prefix "LD_LIBRARY_PATH" : "${env}/lib:${env}/lib64"
  '';

  meta = with stdenv.lib; {
    description = "Flash supported Nexus devices with Ubuntu";
    homepage = http://packages.ubuntu.com/trusty/ubuntu-device-flash;
    maintainers = [ maintainers.matejc ];
    platforms = [ "x86_64-linux" ];
  };
}
