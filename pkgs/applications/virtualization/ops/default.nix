{ buildGoPackage, fetchFromGitHub }:
buildGoPackage rec {
  pname = "ops";
  version = "0.1.10-dev";

  goPackagePath = "github.com/nanovms/ops";

  src = fetchFromGitHub {
    owner = "nanovms";
    repo = "ops";
    rev = "d54fc5618c18540ff9cce41398c1ff63f2731e2d";
    sha256 = "0xf9zami8bz0rxqlg20q8b4sv2i1yjqckhddb84qdn8fhslkz23c";
  };

  goDeps = ./deps.nix;
}
