{ stdenv, fetchurl }:
stdenv.mkDerivation rec {
  name= "glowing-bear-${version}";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/glowing-bear/glowing-bear/archive/cordova-${version}.tar.gz";
    sha256 = "1qjlfpxczfgm70r6ybls0b8gwmz8hy88pvhs8kn5mwlcprz1xamc";
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
