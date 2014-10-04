{ stdenv, fetchurl, writeScript, pkgconfig, qt4, seafile-shared, ccnet
, makeWrapper, cmake }:

stdenv.mkDerivation rec
{
  version = "3.1.6";
  name = "seafile-client-${version}";

  src = fetchurl
  {
    url = "https://github.com/haiwen/seafile-client/archive/v${version}.tar.gz";
    sha256 = "0wbjy42yarlsq6ax8frx4lrcgy3gqqp3f9hp0q9np2nc1fvg66wp";
  };

  buildInputs = [ pkgconfig qt4 seafile-shared makeWrapper cmake ];

  configurePhase = ''
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_SKIP_BUILD_RPATH=ON -DCMAKE_INSTALL_PREFIX="$out" .
  '';

  buildPhase = "make -j1";

  postInstall = ''
    wrapProgram $out/bin/seafile-applet \
      --suffix PATH : ${ccnet}/bin:${seafile-shared}/bin
  '';

  meta =
  {
    homepage = "https://github.com/haiwen/seafile-clients";
    description = "Desktop client for Seafile, the Next-generation Open Source Cloud Storage";
    license = stdenv.lib.licenses.asl20;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.calrama ];
  };
}
