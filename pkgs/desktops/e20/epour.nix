{ stdenv, fetchurl, e19, intltool, buildPythonPackage, pythonPackages, python
, libtorrentRasterbar }:
buildPythonPackage rec {
  name = "epour-${version}";
  version = "0.6.0";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/apps/epour/${name}.tar.gz";
    sha256 = "0qy97n7b7cvq18w3jgl5sbg7r0i5rcl25w9galnq745fjf3zj973";
  };
  buildInputs = with pythonPackages; [ distutils_extra intltool ];
  doCheck = false;
  propagatedBuildInputs = with pythonPackages; [ pythonefl_1_12 dbus pyxdg libtorrentRasterbar ];

  preConfigure = ''
    substituteInPlace ./epour/session.py \
      --replace "import mimetypes" "import mimetypes; mimetypes.init(['$out/etc/mime.types'])"
  '';

  installPhase = ''
    # --old-and-unmanageable not supported by this setup.py
    mkdir -p "$out/lib/${python.libPrefix}/site-packages"
    export PYTHONPATH="$out/lib/${python.libPrefix}/site-packages:$PYTHONPATH"
    ${python}/bin/${python.executable} setup.py install \
      --install-lib=$out/lib/${python.libPrefix}/site-packages \
      --prefix="$out"

    mkdir $out/etc
    cat <<EOF > $out/etc/mime.types
    application/x-bittorrent                        torrent
    EOF
  '';

  meta = {
    description = "Torrent Client";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.gpl3;
  };
}
