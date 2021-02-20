{ qtModule, lib, stdenv, qtbase, qtdeclarative }:

with lib;

qtModule {
  name = "qtremoteobjects";
  qtInputs = [ qtbase qtdeclarative ];
  outputs = [ "out" ];
}
