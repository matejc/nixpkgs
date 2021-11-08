{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  pname = "glrnvim";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "beeender";
    repo = pname;
    rev = "refs/tags/v${version}";
    sha256 = "1i31lrj1vzbfd2b7gw7l2s3nyf87sjrk7s0y171y9134q2y49yby";
  };

  cargoSha256 = "0bksw6ps11642basa526p7j40bhcv1cyryngm8mmxrwysb29m36a";
}
