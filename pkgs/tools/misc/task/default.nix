{ stdenv, buildGoPackage, fetchgit }:

buildGoPackage rec {
  name = "task-unstable-${version}";
  version = "2018-11-10";
  rev = "81f172315cea7763880e9d1adf54893dea8a4281";

  goPackagePath = "github.com/go-task/task";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/go-task/task";
    sha256 = "0155blf7s7kbbwz4xq8459b6ggx5ndhk5hgkvb044xl58za4l3j4";
  };
}
