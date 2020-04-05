{ stdenv
, buildPythonPackage
, fetchFromGitHub
, unittest2
, nose
, mock
}:

buildPythonPackage rec {
  version = "0.2.1";
  pname = "tarman";

  src = fetchFromGitHub {
    owner = "matejc";
    repo = pname;
    rev = version;
    sha256 = "0cmyjjwf8x2699z02cvb6ckjm5cq8k4gbic9apxg5cf2z739fxwk";
  };

  buildInputs = [ unittest2 nose mock ];

  meta = with stdenv.lib; {
    homepage = "https://github.com/matejc/tarman";
    description = "Archive manager with curses interface";
    license = licenses.bsd0;
  };

}
