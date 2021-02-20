{ qtModule, lib, stdenv, qtbase, qtdeclarative }:

with lib;

qtModule {
  name = "qtdatavis3d";
  qtInputs = [ qtbase qtdeclarative ];
  outputs = [ "out" ];
}
