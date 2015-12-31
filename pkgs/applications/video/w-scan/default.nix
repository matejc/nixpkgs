{ stdenv, fetchurl }:
stdenv.mkDerivation rec {
    name = "w_scan";
    version = "20141122";

    src = fetchurl {
        url = "http://wirbel.htpc-forum.de/w_scan/${name}-${version}.tar.bz2";
        sha256 = "1d09pbary496wns5c5yfivp84fyc2grr10rfv6qa0lvwk6mwkmxn";
    };

    meta = {
      description = "small command line utility used to perform frequency scans for DVB and ATSC transmissions";
      homepage = http://wirbel.htpc-forum.de/w_scan/index2.html;
      maintainers = with stdenv.lib.maintainers; [ matejc ];
      platforms = stdenv.lib.platforms.linux;
      license = stdenv.lib.licenses.gpl2;
    };
}
