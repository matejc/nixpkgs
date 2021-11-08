{ stdenv, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  name = "kubewatch-${version}";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "bitnami-labs";
    repo = "kubewatch";
    rev = "v${version}";
    sha256 = "00bbwsckmipi3jpvvpji205yns72gv7ckf4sspsv4blifn7lc6s3";
  };

  vendorSha256 = null;

  runVend = true;

}
