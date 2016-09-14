{ qtSubmodule, qtdeclarative, qtxmlpatterns, qtbase, qtgraphicaleffects }:

qtSubmodule {
  name = "qtquickcontrols2";
  qtInputs = [ qtdeclarative qtxmlpatterns qtbase qtgraphicaleffects ];
}
