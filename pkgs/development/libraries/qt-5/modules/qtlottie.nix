{ qtModule, lib, stdenv, qtbase, qtdeclarative }:

with lib;

qtModule {
  name = "qtlottie";
  qtInputs = [ qtbase qtdeclarative ];
  outputs = [ "out" ];
}
