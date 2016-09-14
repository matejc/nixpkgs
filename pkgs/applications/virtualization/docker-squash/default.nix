{ python27Packages, fetchgit }:
python27Packages.buildPythonPackage rec {
  name = "docker-squash-${version}";
  version = "1.0.4";
  src = fetchgit {
    url = https://github.com/goldmann/docker-squash;
    rev = "refs/tags/${version}";
    sha256 = "0j6zhld287q6acxb92548ki62v89fzfz7xlf62glpzf2f9a3lbh7";
  };
  propagatedBuildInputs = [
    python27Packages.docker
    python27Packages.six
  ];
}
