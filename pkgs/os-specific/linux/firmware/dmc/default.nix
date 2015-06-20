{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "skl_dmc_ver1_18";

  src = fetchurl {
    url = "https://01.org/sites/default/files/${name}.tar.bz2";
    sha256 = "03rbgjmhmazyr5cqpfgfiqlbilr1dm1as2lc3svp9dhfpnaxrcq7";
  };

  installPhase = ''
    substituteInPlace install.sh \
      --replace "/lib/firmware" "$out/lib/firmware"

    ${stdenv.shell} install.sh
  '';

  meta = {
    homepage = https://01.org/linuxgraphics;
    license = stdenv.lib.licenses.unfree;
  };
}
