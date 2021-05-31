{ rustPlatform, fetchFromGitHub, m4 }:

rustPlatform.buildRustPackage rec {
  pname = "kalk";
  version = "0.5.4";

  src = fetchFromGitHub {
    owner = "PaddiM8";
    repo = pname;
    rev = "refs/tags/v${version}";
    sha256 = "sha256-lHHnNiNy8L8GdjOj5EqtticnksPrCwhFoFatFrWEQJ4=";
  };

  nativeBuildInputs = [ m4 ];

  cargoSha256 = "sha256-Qtip9CeurTM4aY67F5tSM3fis6W/dlnaIVMQ29UoBzc=";
}
