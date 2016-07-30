{ stdenv, fetchurl, buildEnv, makeWrapper, xz }:
stdenv.mkDerivation rec {
  name = "ubuntu-device-flash";

  src = fetchurl {
    url = "http://ubuntu-master.mirror.tudos.de/ubuntu/pool/universe/g/goget-ubuntu-touch/ubuntu-device-flash_0.34-0ubuntu1_amd64.deb";
    sha256 = "192ias2vrgfshzkd8ki660g81di3082prqnlbk00v0myw4nck5a6";
    name = "${name}.deb";
  };

  buildInputs = [ makeWrapper xz ];

  phases = [ "installPhase" "fixupPhase" ];

  installPhase = ''
    mkdir -p $out
    ar p $src data.tar.xz | tar -C $out -xJ ./usr
    mv $out/usr/* $out/
    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      $out/bin/ubuntu-device-flash
  '';

  meta = with stdenv.lib; {
    description = "Flash supported Nexus devices with Ubuntu";
    homepage = http://packages.ubuntu.com/trusty/ubuntu-device-flash;
    maintainers = [ maintainers.matejc ];
    platforms = [ "x86_64-linux" ];
  };
}
