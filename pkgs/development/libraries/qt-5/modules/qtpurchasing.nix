{ qtModule, lib, stdenv, qtbase, qtdeclarative }:

with lib;

qtModule {
  name = "qtpurchasing";
  qtInputs = [ qtbase qtdeclarative ];
  outputs = [ "out" ];
}
