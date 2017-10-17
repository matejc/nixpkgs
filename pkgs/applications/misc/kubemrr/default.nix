{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "kubemrr-${version}";
  version = "1.3.0";
  goPackagePath = "github.com/mkokho/kubemrr";

  src = fetchFromGitHub {
    owner = "mkokho";
    repo = "kubemrr";
    rev = "v${version}";
    sha256 = "0w3mz1b3bxiq6i0lbbxmp9824w154lp710hs6g7f8q7ynrggpa4p";
  };

  meta = with stdenv.lib; {
    homepage = https://github.com/mkokho/kubemrr;
    description = "For blazingly fast kubernets ops";
    license = with licenses; [ asl20 ];
    maintainers = [ maintainers.matejc ];
  };
}
