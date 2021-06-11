{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  pname = "glrnvim";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "beeender";
    repo = pname;
    rev = "refs/tags/v${version}";
    sha256 = "0khilil0mzhczsksgmnrzc0d9a4zml942sy7pj57i9rz1vi6sng4";
  };

  cargoSha256 = "0jvaa5fjs1a1xxwc13y0lxk5w59cf0hcv5axaxx89qphrlk90532";
}
