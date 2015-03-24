{ stdenv, fetchurl, dataDir ? "/var/lib/drupal" }:
stdenv.mkDerivation rec {
  name= "drupal-${version}";
  version = "7.35";

  src = fetchurl {
    url = "http://ftp.drupal.org/files/projects/${name}.tar.gz";
    sha256 = "1qzj8pyxddsvhb5dym8pzwvh3nnwb738g2xprcv4jc8psqr6rm5x";
  };

  installPhase =
    ''
      mkdir -p $out/www/drupal
      cp -r ./* $out/www/drupal

      rm -rf $out/www/drupal/sites/default
      ln -s ${dataDir}/site $out/www/drupal/sites/default

      rm -rf $out/www/drupal/sites/all/modules
      ln -s ${dataDir}/modules $out/www/drupal/sites/all/modules
    '';

  meta = {
    description = "Drupal is an open source content management platform";
    homepage = https://www.drupal.org;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    license = stdenv.lib.licenses.gpl2;
  };
}
