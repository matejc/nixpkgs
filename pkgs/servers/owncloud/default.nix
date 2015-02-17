{ stdenv, fetchurl }:
stdenv.mkDerivation rec {
  name= "owncloud-${version}";
  version = "8.0.0";

  src = fetchurl {
    url = "https://download.owncloud.org/community/${name}.tar.bz2";
    sha256 = "0brlwqiyia7y0z9rsz6gfd9px7rvpgr04hycph3v2gjczq3cnqhc";
  };

  installPhase =
    ''
      mkdir -p $out/www/owncloud
      find . -maxdepth 1 -execdir cp -r '{}' $out/www/owncloud \;

      substituteInPlace $out/www/owncloud/lib/base.php \
        --replace 'OC_Config::$object = new \OC\Config(self::$configDir);' \
                  'self::$configDir = getenv("OC_CONFIG_PATH"); OC_Config::$object = new \OC\Config(self::$configDir);'
    '';

  meta = {
    description = "An enterprise file sharing solution for online collaboration and storage";
    homepage = https://owncloud.org;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    license = stdenv.lib.licenses.agpl3Plus;
  };

}
