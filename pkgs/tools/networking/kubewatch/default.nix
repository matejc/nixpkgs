{ stdenv, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "kubewatch-${version}";
  version = "20190306";

  goPackagePath = "github.com/bitnami-labs/kubewatch";

  src = fetchFromGitHub {
    owner = "bitnami-labs";
    repo = "kubewatch";
    rev = "8454efef4c27e2cd9d281ac24743d1792c4e2702";
    sha256 = "1clqdfqa9jsk4pm9gygk5l0biysnlavm39bl5hxv96sdfv53z1jr";
  };

  # regenerate deps.nix using following steps:
  #
  # go get -u github.com/bitnami-labs/kubewatch
  # cd $GOPATH/src/github.com/bitnami-labs/kubewatch
  # git checkout <version>
  # dep init
  # dep2nix
  goDeps = ./deps.nix;

  meta = with stdenv.lib; {
    description = "Kubernetes log viewer";
    homepage = https://github.com/bitnami-labs/kubewatch;
    license = licenses.mit;
    maintainers = with maintainers; [ offline vdemeester ];
  };
}
