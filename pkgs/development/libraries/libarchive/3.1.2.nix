{ fetchurl, libarchive, lib }:
lib.overrideDerivation libarchive (args: rec {
  name = "libarchive-${version}";
  version = "3.1.2";
  src = fetchurl {
    url = "http://libarchive.org/downloads/${name}.tar.gz";
    sha256 = "0pixqnrcf35dnqgv0lp7qlcw7k13620qkhgxr288v7p4iz6ym1zb";
  };
})
