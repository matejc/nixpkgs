{ stdenv, python35Packages, fetchFromGitHub }:

python35Packages.buildPythonPackage rec {
  name = "push-${version}";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "matejc";
    repo = "push";
    rev = "e94cdca2c4e69590cf69daf67e79c3faa33e774e";
    sha256 = "1pyy04pr5bjkjhr8rssfiw6vmcvh7n3166xckjnjc6w0ybnfslwx";
  };

  propagatedBuildInputs = [ python35Packages.requests2 ];

  meta = {
    homepage = "http://github.com/matejc/push/";
    description = "Utility to push tar.gz docker images to v2 registry";
    license = stdenv.lib.licenses.bsd3;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
  };
}
