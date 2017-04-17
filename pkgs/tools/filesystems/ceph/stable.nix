{ stdenv, ensureNewerSourcesHook, autoconf, automake, makeWrapper, pkgconfig
, libtool, which, git, cmake, fetchgit
, boost, python2Packages, libxml2, zlib, openldap, lttng-ust, liburcu

# Optional Dependencies
, snappy ? null, leveldb ? null, yasm ? null, fcgi ? null, expat ? null
, curl ? null, fuse ? null, accelio ? null, libibverbs ? null, librdmacm ? null
, libedit ? null, libatomic_ops ? null, kinetic-cpp-client ? null
, rocksdb ? null, libs3 ? null

# Mallocs
, jemalloc ? null, gperftools ? null

# Crypto Dependencies
, cryptopp ? null
, nss ? null, nspr ? null

# Linux Only Dependencies
, linuxHeaders, libuuid, udev, keyutils, libaio ? null, libxfs ? null
, zfs ? null }:

# We must have one crypto library
assert cryptopp != null || (nss != null && nspr != null);

with stdenv;
with stdenv.lib;
let
  version = "11.2.0";

  inherit (python2Packages) python;
  mkFlag = trueStr: falseStr: cond: name: val:
    if cond == null then null else
      "--${if cond != false then trueStr else falseStr}${name}"
      + "${if val != null && cond != false then "=${val}" else ""}";

  mkEnable = mkFlag "enable-" "disable-";
  mkWith = mkFlag "with-" "without-";
  mkOther = mkFlag "" "" true;

  shouldUsePkg = pkg_: let pkg = (builtins.tryEval pkg_).value;
    in if lib.any (x: x == system) (pkg.meta.platforms or [])
      then pkg else null;

  optSnappy = shouldUsePkg snappy;
  optLeveldb = shouldUsePkg leveldb;
  optYasm = shouldUsePkg yasm;
  optFcgi = shouldUsePkg fcgi;
  optExpat = shouldUsePkg expat;
  optCurl = shouldUsePkg curl;
  optFuse = shouldUsePkg fuse;
  optAccelio = shouldUsePkg accelio;
  optLibibverbs = shouldUsePkg libibverbs;
  optLibrdmacm = shouldUsePkg librdmacm;
  optLibedit = shouldUsePkg libedit;
  optLibatomic_ops = shouldUsePkg libatomic_ops;
  optKinetic-cpp-client = shouldUsePkg kinetic-cpp-client;
  optRocksdb = shouldUsePkg rocksdb;
  optLibs3 = if versionAtLeast version "10.0.0" then null else shouldUsePkg libs3;

  optJemalloc = shouldUsePkg jemalloc;
  optGperftools = shouldUsePkg gperftools;

  optCryptopp = shouldUsePkg cryptopp;
  optNss = shouldUsePkg nss;
  optNspr = shouldUsePkg nspr;

  optLibaio = shouldUsePkg libaio;
  optLibxfs = shouldUsePkg libxfs;
  optZfs = shouldUsePkg zfs;

  hasServer = optSnappy != null && optLeveldb != null;
  hasMon = hasServer;
  hasMds = hasServer;
  hasOsd = hasServer;
  hasRadosgw = optFcgi != null && optExpat != null && optCurl != null && optLibedit != null;

  hasXio = (stdenv.isLinux || stdenv.isFreeBSD) &&
    versionAtLeast version "9.0.3" &&
    optAccelio != null && optLibibverbs != null && optLibrdmacm != null;

  hasRocksdb = versionAtLeast version "9.0.0" && optRocksdb != null;

  # TODO: Reenable when kinetic support is fixed
  #hasKinetic = versionAtLeast version "9.0.0" && optKinetic-cpp-client != null;
  hasKinetic = false;

  # Malloc implementation (can be jemalloc, tcmalloc or null)
  malloc = if optJemalloc != null then optJemalloc else optGperftools;

  # We prefer nss over cryptopp
  cryptoStr = if optNss != null && optNspr != null then "nss" else
    if optCryptopp != null then "cryptopp" else "none";
  cryptoLibsMap = {
    nss = [ optNss optNspr ];
    cryptopp = [ optCryptopp ];
    none = [ ];
  };

  wrapArgs = "--set PYTHONPATH \"$(toPythonPath $lib)\""
    + " --prefix PYTHONPATH : \"$(toPythonPath ${python2Packages.flask})\""
    + " --set PATH \"$out/bin\"";
in
stdenv.mkDerivation rec {
  name="ceph-${version}";

  src = fetchgit {
    url = "https://github.com/ceph/ceph.git";
    rev = "refs/tags/v${version}";
    sha256 = "0974n07hf234b302xcvbr0qja091hhqqabgzlys72j4sk9m4y2mp";
  };

  nativeBuildInputs = [
    cmake
    autoconf automake makeWrapper pkgconfig libtool which git
    (ensureNewerSourcesHook { year = "1980"; })
    python2Packages.setuptools python2Packages.argparse
  ];
  buildInputs = cryptoLibsMap.${cryptoStr} ++ [
    boost python libxml2 optYasm optLibatomic_ops optLibs3 malloc
    python2Packages.flask zlib python2Packages.cython openldap lttng-ust liburcu
    python2Packages.sphinx # Used for docs
  ] ++ optionals stdenv.isLinux [
    linuxHeaders libuuid udev keyutils.dev optLibaio optLibxfs optZfs
  ] ++ optionals hasServer [
    optSnappy optLeveldb
  ] ++ optionals hasRadosgw [
    optFcgi optExpat optCurl optFuse optLibedit
  ] ++ optionals hasXio [
    optAccelio optLibibverbs optLibrdmacm
  ] ++ optionals hasRocksdb [
    optRocksdb
  ] ++ optionals hasKinetic [
    optKinetic-cpp-client
  ];

  preConfigure = ''
    substituteInPlace cmake/modules/Findkeyutils.cmake \
      --replace "/usr/local/include" "${keyutils.dev}/include"

    substituteInPlace src/key_value_store/kv_flat_btree_async.cc \
      --replace "/usr/include/asm-generic" "${glibc.dev}/include/asm-generic"
  '';

  cmakeFlags = [ "-DENABLE_GIT_VERSION=OFF" ];

  installFlags = [ "sysconfdir=\${out}/etc" ];

  enableParallelBuilding = true;

  meta = {
    homepage = http://ceph.com/;
    description = "Distributed storage system";
    license = licenses.lgpl21;
    maintainers = with maintainers; [ matejc ];
    platforms = platforms.unix;
  };
}
