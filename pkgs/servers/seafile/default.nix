{ stdenv, fetchurl, which, automake, autoconf, pkgconfig, libtool, vala, python
, intltool, fuse, ccnet, libarchive, libevhtp, libevent, acl, lzma, bzip2
, attr, makeWrapper, gnutar, seafile_topdir ? "" }:
let
  libevent_openssl = libevent.override { use_openssl = true; };
in
stdenv.mkDerivation rec
{
  version = "3.1.4";
  name = "seafile-server-${version}";

  src = fetchurl
  {
    url = "https://github.com/haiwen/seafile/archive/v${version}.tar.gz";
    sha256 = "14w8wr7gh7j18amijrvr3xr2g43lzvypzg1qfp38aky6gf0h2bm3";
  };

  buildInputs = [ which automake autoconf pkgconfig libtool vala python intltool
    fuse libarchive libevhtp libevent_openssl acl lzma bzip2 attr makeWrapper
    gnutar ];
  propagatedBuildInputs = [ ccnet ];

  # seafile_topdir can be /var/lib/seafile/haiwen
  # (or /data/haiwen, see http://manual.seafile.com/build_seafile/server.html)
  # if you do not set seafile_topdir then application will try to make
  # directories like /nix/pids/ because seafile executables are in /nix/store/...
  preConfigure = (stdenv.lib.optionalString (seafile_topdir != "") ''
    substituteInPlace controller/seafile-controller.c \
      --replace "g_path_get_dirname (installpath);" "\"${seafile_topdir}\";"
  '') + ''
    sed -ie 's|/bin/bash|/bin/sh|g' ./autogen.sh
    ./autogen.sh
  '';

  configureFlags = "--disable-client --enable-server";

  buildPhase = "make -j1";

  postInstall = ''
    for i in $out/bin/*; do
        wrapProgram $i \
            --prefix PATH ':' $out/bin:${ccnet}/bin
    done
  '';

  meta =
  {
    homepage = "https://github.com/haiwen/seafile";
    description = "Open source cloud storage with advanced features on privacy protection and teamwork";
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.matejc ];
  };
}
