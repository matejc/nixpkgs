{ stdenv, fetchurl }:
stdenv.mkDerivation rec {
  name= "glowing-bear-${version}";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/glowing-bear/glowing-bear/archive/cordova-${version}.tar.gz";
    sha256 = "05dkn49xk9mk2sx6mb165gsrbzl3yzxzzrb9p6ynw0mgxckcsgi7";
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
