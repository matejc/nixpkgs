{ stdenv, fetchurl, writeScript, pkgconfig, qt4, seafile-shared31, ccnet31
, makeWrapper, cmake }:

stdenv.mkDerivation rec
{
  version = "3.1.4";
  name = "seafile-client-${version}";

  src = fetchurl
  {
    url = "https://github.com/haiwen/seafile-client/archive/v${version}.tar.gz";
    sha256 = "0a99ng0scbypnz8c7shzs2p4x3cnqnwb34dg60cprfs7h2b0xrsj";
  };

  buildInputs = [ pkgconfig qt4 seafile-shared31 makeWrapper cmake ];

  configurePhase = ''
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_SKIP_BUILD_RPATH=ON -DCMAKE_INSTALL_PREFIX="$out" .
  '';

  buildPhase = "make -j1";

  postInstall = ''
    wrapProgram $out/bin/seafile-applet \
      --suffix PATH : ${ccnet31}/bin:${seafile-shared31}/bin
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
