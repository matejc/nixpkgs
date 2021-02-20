{ qtModule, lib, stdenv, qtbase, qtdeclarative }:

with lib;

qtModule {
  name = "qt3d";
  qtInputs = [ qtbase qtdeclarative ];
  outputs = [ "out" ];
}
