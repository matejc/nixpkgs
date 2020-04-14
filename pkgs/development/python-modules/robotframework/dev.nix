{ stdenv, fetchPypi, buildPythonPackage }:

buildPythonPackage rec {
  pname = "robotframework";
  version = "3.2rc1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1h2zir3387rjzi1az2jxv5i48g5cbj2qlwm2286ybqaln3fwhspz";
    extension = "zip";
  };

  meta = with stdenv.lib; {
    description = "Generic test automation framework";
    homepage = https://robotframework.org/;
    license = licenses.asl20;
    maintainers = with maintainers; [ bjornfor ];
  };
}
