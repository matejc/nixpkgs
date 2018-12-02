{ stdenv, buildGoPackage, fetchgit }:

buildGoPackage rec {
  name = "rootlesskit-unstable-${version}";
  version = "2018-11-09";
  rev = "99d60416c7076922cf78bae9f976b6295af4eb86";

  goPackagePath = "github.com/rootless-containers/rootlesskit";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/rootless-containers/rootlesskit";
    sha256 = "1gq5a2l5f22h51crxc2yd3p04lqlfybvgx4znq3xfd1siq2glix5";
  };
}
