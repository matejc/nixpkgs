{ qtSubmodule, qtbase, qtquickcontrols, wayland, pkgconfig, libxkbcommon }:

qtSubmodule {
  name = "qtwayland";
  qtInputs = [ qtbase qtquickcontrols ];
  buildInputs = [ wayland libxkbcommon ];
  nativeBuildInputs = [ pkgconfig ];
}
