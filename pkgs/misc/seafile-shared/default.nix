{stdenv, fetchurl, which, automake, autoconf, pkgconfig, libtool, vala, python, intltool, fuse, ccnet}:

stdenv.mkDerivation rec
{
  version = "3.1.4";
  name = "seafile-shared-${version}";

  src = fetchurl
  {
    url = "https://github.com/haiwen/seafile/archive/v${version}.tar.gz";
    sha256 = "14w8wr7gh7j18amijrvr3xr2g43lzvypzg1qfp38aky6gf0h2bm3";
  };

  buildInputs = [ which automake autoconf pkgconfig libtool vala python intltool fuse ];
  propagatedBuildInputs = [ ccnet ];

  preConfigure = ''
  sed -ie 's|/bin/bash|/bin/sh|g' ./autogen.sh
  ./autogen.sh
  '';

  configureFlags = "--disable-server --disable-console";

  buildPhase = "make -j1";

  postInstall = ''
  # Remove seafile binary
  rm -rf "$out/bin/seafile"
  # Remove cli client binary
  rm -rf "$out/bin/seaf-cli"
  '';

  meta =
  {
    homepage = "https://github.com/haiwen/seafile";
    description = "Shared components of Seafile: seafile-daemon, libseafile, libseafile python bindings, manuals, and icons";
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.calrama ];
  };
}
