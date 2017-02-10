{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

with lib;

buildGoPackage rec {
  name = "flannel-${version}";
  version = "0.7.0";
  rev = "v${version}";

  goPackagePath = "github.com/coreos/flannel";

  hardeningDisable = [ "fortify" ];

  src = fetchFromGitHub {
    inherit rev;
    owner = "coreos";
    repo = "flannel";
    sha256 = "1zxb0m77c60gm4bg06rzg3vd2fvgv6wnpyv1d8svb2x3v1r19a89";
  };

  meta = {
    description = "Network fabric for containers, designed for Kubernetes";
    license = licenses.asl20;
    homepage = https://github.com/coreos/flannel;
    maintainers = with maintainers; [offline];
    platforms = with platforms; linux;
  };
}
