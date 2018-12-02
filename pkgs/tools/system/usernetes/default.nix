{ stdenv, buildEnv, fetchurl, makeWrapper, slirp4netns, utillinux, coreutils
, shadow, iproute, gnused, iptables, git, kmod, gnugrep, pigz, strace, glib }:
let
  env = buildEnv {
    name = "usernetes-env";
    paths = [
      utillinux coreutils shadow iproute gnused iptables git kmod gnugrep pigz
      strace glib
    ];
  };
in
stdenv.mkDerivation rec {
  name = "usernetes-${version}";
  version = "20181109.0";

  src = fetchurl {
    url = "https://github.com/rootless-containers/usernetes/releases/download/v${version}/usernetes-x86_64.tbz";
    sha256 = "1pzpk7l81966ljz25bgggq0i2b8s2jwk5r02j452apfy4rqikzrv";
  };

  nativeBuildInputs = [ makeWrapper ];

  installPhase = ''
    mkdir -p $out/{libexec/usernetes,bin}
    cp -r ./* $out/libexec/usernetes/
    substituteInPlace $out/libexec/usernetes/Taskfile.yml \
      --replace 'dockerd --experimental' 'dockerd --experimental $DOCKERD_ARGS' \
      --replace 'hyperkube kube-controller-manager' 'hyperkube kube-controller-manager $CONTROLLER_MANAGER_ARGS' \
      --replace '--feature-gates DevicePlugins=false' '--feature-gates DevicePlugins=false $KUBELET_ARGS'
    makeWrapper $out/libexec/usernetes/run.sh $out/bin/usernetes-run \
      --set PATH "/run/wrappers/bin:${env}/bin"
    makeWrapper $out/libexec/usernetes/dockercli.sh $out/bin/usernetes-dockercli \
      --set PATH "/run/wrappers/bin:${env}/bin"
    makeWrapper $out/libexec/usernetes/cleanup.sh $out/bin/usernetes-cleanup \
      --set PATH "/run/wrappers/bin:${env}/bin"
    makeWrapper $out/libexec/usernetes/kubectl.sh $out/bin/usernetes-kubectl \
      --set PATH "/run/wrappers/bin:${env}/bin"
    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      $out/libexec/usernetes/bin/hyperkube
    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      --set-rpath "${stdenv.lib.makeLibraryPath [ glib ]}" $out/libexec/usernetes/bin/conmon
  '';
}
