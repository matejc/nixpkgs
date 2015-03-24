{ stdenv, fetchurl, dataDir ? "/var/lib/owncloud" }:
let
  userIni = builtins.toFile "user.ini" ''
    upload_max_filesize=513M
    post_max_size=513M
    memory_limit=512M
    mbstring.func_overload=0
    always_populate_raw_post_data=-1
    default_charset='UTF-8'
    output_buffering=off
  '';
in
stdenv.mkDerivation rec {
  name= "owncloud-${version}";
  version = "7.0.5";

  src = fetchurl {
    url = "https://download.owncloud.org/community/${name}.tar.bz2";
    sha256 = "1j21b7ljvbhni9l0b1cpzlhsjy36scyas1l1j222mqdg2srfsi9y";
  };

  installPhase =
    ''
      mkdir -p $out/www/owncloud
      find . -maxdepth 1 -execdir cp -r '{}' $out/www/owncloud \;
      mv $out/www/owncloud/config $out/www/owncloud/_config
      ln -sf ${dataDir}/config $out/www/owncloud/config
      ln -s ${userIni} $out/www/owncloud/.user.ini
    '';

  meta = {
    description = "An enterprise file sharing solution for online collaboration and storage";
    homepage = https://owncloud.org;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    license = stdenv.lib.licenses.agpl3Plus;
  };
}
