{ stdenv, fetchurl, dataDir ? "/var/lib/owncloud" }:
stdenv.mkDerivation rec {
  name= "owncloud-${version}";
  version = "8.1.0";

  src = fetchurl {
    url = "https://download.owncloud.org/community/${name}.tar.bz2";
    sha256 = "1vkly4xv1wdswvjss8pr6vxvfrmvsk663r6xpygwm0vh7lxqsc1x";
  };

  installPhase =
    ''
      mkdir -p $out/www/owncloud
      find . -maxdepth 1 -execdir cp -r '{}' $out/www/owncloud \;
      mv $out/www/owncloud/config $out/www/owncloud/_config
      ln -sf ${dataDir}/config $out/www/owncloud/config
    '';

  meta = {
    description = "An enterprise file sharing solution for online collaboration and storage";
    homepage = https://owncloud.org;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    license = stdenv.lib.licenses.agpl3Plus;
  };
}
