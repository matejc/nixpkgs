{ lib
, python
}:

with python.pkgs;

buildPythonApplication rec {
  pname = "mycli";
  version = "1.16.0";
  name = "${pname}-${version}";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0jcnisfr01ylmxf6xsgf3risdjk2cskhymanb6s1jrk1nqvmbii9";
  };

  propagatedBuildInputs = [
    pymysql configobj sqlparse prompt_toolkit pygments click pycrypto cryptography cli-helpers
  ];

  postPatch = ''
    substituteInPlace setup.py --replace "==" ">="
  '';

  # No tests in archive. Newer versions do include tests
  doCheck = false;

  meta = {
    inherit version;
    description = "Command-line interface for MySQL";
    longDescription = ''
      Rich command-line interface for MySQL with auto-completion and
      syntax highlighting.
    '';
    homepage = http://mycli.net;
    license = lib.licenses.bsd3;
  };
}
