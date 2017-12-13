{ lib, stdenv, fetchgit, fetchFromGitHub, makeWrapper, git
, python3, sshfs-fuse, torsocks, sshuttle, conntrack_tools }:

let
  sshuttle-telepresence = lib.overrideDerivation sshuttle (p: {
    src = fetchgit {
      url = "https://github.com/datawire/sshuttle.git";
      rev = "32226ff14d98d58ccad2a699e10cdfa5d86d6269";
      sha256 = "1q20lnljndwcpgqv2qrf1k0lbvxppxf98a4g5r9zd566znhcdhx3";
      leaveDotGit = true;
    };

    buildInputs = p.buildInputs ++ [ git ];
    postPatch = "rm sshuttle/tests/client/test_methods_nat.py";
    postInstall = "mv $out/bin/sshuttle $out/bin/sshuttle-telepresence";
  });
in stdenv.mkDerivation rec {
  pname = "telepresence";
  version = "0.71";
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "datawire";
    repo = "telepresence";
    rev = version;
    sha256 = "06kfy6grm517gk7dcnaq8ws0fa7hzpk5hljprxbhwqnxd76zvlpd";
  };

  buildInputs = [ makeWrapper ];

  phases = ["unpackPhase" "installPhase"];

  installPhase = ''
    mkdir -p $out/libexec $out/bin
    cp cli/telepresence $out/libexec/telepresence
    cp cli/stamp-telepresence $out/libexec/stamp-telepresence

    makeWrapper $out/libexec/telepresence $out/bin/telepresence \
      --prefix PATH : ${lib.makeBinPath [python3 sshfs-fuse torsocks conntrack_tools sshuttle-telepresence]}

    makeWrapper $out/libexec/stamp-telepresence $out/bin/stamp-telepresence \
      --prefix PATH : ${lib.makeBinPath [python3 sshfs-fuse torsocks conntrack_tools sshuttle-telepresence]}
  '';

  meta = {
    homepage = https://www.telepresence.io/;
    description = "Local development against a remote Kubernetes or OpenShift cluster";
    license = with lib.licenses; [ asl20 ];
    maintainers = with lib.maintainers; [ offline ];
  };
}
