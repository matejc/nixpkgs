{ stdenv, boost, fuse, openssl, cmake, attr, jdk, ant, which, python, file
, fetchurl, lib, valgrind, makeWrapper, utillinux }:
let
  sourceInfo = rec {
    baseName="XtreemFS";
    version="1.5.1";
    name="${baseName}-${version}";
    url="http://www.xtreemfs.org/downloads/${name}.tar.gz";
    hash="134jhzrdh1ah6b1mvwrnjyf5dass8xh2li40xcmd8cw2nmn8m3r7";
  };
in
stdenv.mkDerivation rec {
  src = fetchurl {
    url = sourceInfo.url;
    sha256 = sourceInfo.hash;
  };

  inherit (sourceInfo) name version;
  buildInputs = [ which attr makeWrapper ];

  preConfigure = ''
    export JAVA_HOME=${jdk}
    export ANT_HOME=${ant}

    export BOOST_INCLUDEDIR=${boost.dev}/include
    export BOOST_LIBRARYDIR=${boost.lib}/lib
    export OPENSSL_ROOT_DIR=${openssl}

    substituteInPlace cpp/cmake/FindValgrind.cmake \
      --replace "/usr/local" "${valgrind}"

    substituteInPlace cpp/CMakeLists.txt \
      --replace '"/lib64" "/usr/lib64"' '"${attr}/lib" "${fuse}/lib"'

    export NIX_CFLAGS_COMPILE="$NIX_CFLAGS_COMPILE -I${fuse}/include"
    export NIX_CFLAGS_LINK="$NIX_CFLAGS_LINK -L${fuse}/lib"

    export DESTDIR=$out

    substituteInPlace Makefile \
      --replace "/usr/share/" "/share/" \
      --replace 'BIN_DIR=$(DESTDIR)/usr/bin' "BIN_DIR=$out/bin"

    substituteInPlace etc/init.d/generate_initd_scripts.sh \
      --replace "/bin/bash" "${stdenv.shell}"

    # do not put cmake into buildInputs
    export PATH="$PATH:${cmake}/bin"
  '';

  doCheck = false;

  postInstall = ''
    rm -r $out/sbin

    wrapProgram $out/etc/xos/xtreemfs/generate_uuid \
      --prefix PATH : ${which}/bin:${utillinux}/bin

    substituteInPlace $out/etc/xos/xtreemfs/postinstall_setup.sh \
      --replace 'XTREEMFS_GENERATE_UUID_SCRIPT="''${XTREEMFS_ETC}/generate_uuid"' "XTREEMFS_GENERATE_UUID_SCRIPT=$out/etc/xos/xtreemfs/generate_uuid"
  '';

  meta = {
    description = "A distributed filesystem";
    maintainers = with lib.maintainers;
    [
      raskin matejc
    ];
    platforms = with lib.platforms;
      linux;
    license = lib.licenses.bsd3;
  };
}
