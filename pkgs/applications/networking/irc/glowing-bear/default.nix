{ stdenv, fetchurl }:
stdenv.mkDerivation rec {
  name= "glowing-bear-${version}";
  version = "0.5.2";

  src = fetchurl {
    url = "https://github.com/glowing-bear/glowing-bear/archive/cordova-${version}.tar.gz";
    sha256 = "0sxxigfa1c9d5cz33hi2fln2cwv3gg253hscbm1yi1ygrd9p6l3k";
  };

  installPhase =
    ''
      mkdir -p $out/share/glowing-bear
      find . -maxdepth 1 -execdir cp -r '{}' $out/share/glowing-bear \;
    '';

  meta = {
    description = "A web client for WeeChat";
    homepage = http://www.glowing-bear.org;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    license = stdenv.lib.licenses.gpl3;
  };
}
