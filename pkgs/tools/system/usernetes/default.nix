{ stdenv, buildEnv, fetchurl, makeWrapper, utillinux, coreutils, hostname
, shadow, iproute, gnused, iptables, git, kmod, gnugrep, pigz, strace, glib }:
let
  env = buildEnv {
    name = "usernetes-env";
    paths = [
      utillinux coreutils shadow iproute gnused iptables git kmod gnugrep pigz
      strace glib hostname
    ];
  };
in
stdenv.mkDerivation rec {
  name = "usernetes-${version}";
  version = "20190826.0";

  src = fetchurl {
    url = "https://github.com/rootless-containers/usernetes/releases/download/v${version}/usernetes-x86_64.tbz";
    sha256 = "10m2ragajnzv03phgd8zpcaqjhk80kvzyycgf3nzy1mvsyn1wfk1";
  };

  nativeBuildInputs = [ makeWrapper ];

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/{libexec/usernetes,bin}
    cp -r ./* $out/libexec/usernetes/
    substituteInPlace $out/libexec/usernetes/Taskfile.yml \
      --replace 'dockerd --experimental' 'dockerd --experimental $DOCKERD_ARGS' \
      --replace 'hyperkube kube-controller-manager' 'hyperkube kube-controller-manager $CONTROLLER_MANAGER_ARGS' \
      --replace '--feature-gates DevicePlugins=false' '--feature-gates DevicePlugins=false $KUBELET_ARGS'
    substituteInPlace $out/libexec/usernetes/boot/rootlesskit.sh \
      --replace 'hostname -I' 'hostname -i'
    makeWrapper $out/libexec/usernetes/run.sh $out/bin/usernetes-run \
      --set PATH "/run/wrappers/bin:${env}/bin" \
      --add-flags "-d $out/libexec/usernetes/"
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
