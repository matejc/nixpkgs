{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

with lib;

buildGoPackage rec {
  name = "flannel-${version}";
  version = "0.7.1";
  rev = "v${version}";

  goPackagePath = "github.com/coreos/flannel";

  hardeningDisable = [ "fortify" ];

  src = fetchFromGitHub {
    inherit rev;
    owner = "coreos";
    repo = "flannel";
    sha256 = "03ffxz6wn9dp1ylbqak65f0l7ksyppkrdjbjjzn5qq80zcad9pdi";
  };

  meta = {
    description = "Network fabric for containers, designed for Kubernetes";
    license = licenses.asl20;
    homepage = https://github.com/coreos/flannel;
    maintainers = with maintainers; [offline];
    platforms = with platforms; linux;
  };
}
