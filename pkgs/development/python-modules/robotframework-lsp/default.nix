{ stdenv
, buildPythonPackage
, fetchFromGitHub
, robotframework-dev
}:

buildPythonPackage rec {
  version = "0.0.7";
  pname = "robotframework-lsp";

  src = fetchFromGitHub {
    owner = "robocorp";
    repo = "robotframework-lsp";
    rev = "${pname}-${version}";
    sha256 = "1q89ipix4spkw6i5jdh2sywqpmgmmy8wx9p40p4rddaa9yba54mm";
  };

  sourceRoot = "source/src";

  #doCheck = false;

  propagatedBuildInputs = [ robotframework-dev ];

  meta = with stdenv.lib; {
    description = "Language Server Protocol for Robot Framework";
    homepage = https://github.com/robocorp/robotframework-lsp;
    license = licenses.asl20;
  };

}
