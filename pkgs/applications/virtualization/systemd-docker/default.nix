{ stdenv, lib, buildGoPackage, fetchgit }:

buildGoPackage rec {
  name = "systemd-docker-${version}";
  version = "0.2.1";

  goPackagePath = "github.com/ibuildthecloud/systemd-docker";

  preBuild = "export GOPATH=$GOPATH:$NIX_BUILD_TOP/go/src/github.com/ibuildthecloud/systemd-docker/Godeps/_workspace";

  src = fetchgit {
    rev = "refs/tags/v${version}";
    url = "git://github.com/ibuildthecloud/systemd-docker";
    sha256 = "1awwcf93fq9hikmam69z8ndjpp9rbn95h1y7830ybqfx73b3ykmh";
  };
}
