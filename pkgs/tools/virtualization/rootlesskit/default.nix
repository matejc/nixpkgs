{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "rootlesskit";
  version = "0.14.5";

  src = fetchFromGitHub {
    owner = "rootless-containers";
    repo = "rootlesskit";
    rev = "v${version}";
    sha256 = "sha256-dj0SBer8sEIdzajynlTf351SprQfHewRHZjDQC1eQYU=";
  };

  runVend = true;
  vendorSha256 = "sha256-Yhgx7VsfFietl5G93GH4Kz/ZKx+pWmRRQF4tiXG9C2s=";

  meta = with lib; {
    homepage = "https://github.com/rootless-containers/rootlesskit";
    description = ''Kind of Linux-native "fake root" utility, made for mainly running Docker and Kubernetes as an unprivileged user'';
    license = licenses.asl20;
    maintainers = with maintainers; [ offline ];
    platforms = platforms.linux;
  };
}
