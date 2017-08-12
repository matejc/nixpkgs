{ mkDerivation, lib, fetchFromGitHub, cmake, python3, qtbase, qtquickcontrols, curaengine }:
let
  materials = fetchFromGitHub {
    owner = "Ultimaker";
    repo = "fdm_materials";
    rev = version;
    sha256 = "1haazpjcyvjqkv1zxj8pnrn7290m315c0q26zml6hd3aqjgilgif";
  };
  version = "3.0.3";
in
mkDerivation rec {
  name = "cura-${version}";
  inherit version;

  src = fetchFromGitHub {
    owner = "Ultimaker";
    repo = "Cura";
    rev = version;
    sha256 = "0ks8bb3mif6kyvb01ddhpn1c2l31s8fxivi70kmpm743sqv4kjaa";
  };

  buildInputs = [ qtbase qtquickcontrols ];
  propagatedBuildInputs = with python3.pkgs; [ uranium zeroconf pyserial numpy-stl ];
  nativeBuildInputs = [ cmake python3.pkgs.wrapPython ];

  cmakeFlags = [ "-DURANIUM_DIR=${python3.pkgs.uranium.src}" ];

  postPatch = ''
    sed -i 's,/python''${PYTHON_VERSION_MAJOR}/dist-packages,/python''${PYTHON_VERSION_MAJOR}.''${PYTHON_VERSION_MINOR}/site-packages,g' CMakeLists.txt
    sed -i 's, executable_name = .*, executable_name = "${curaengine}/bin/CuraEngine",' plugins/CuraEngineBackend/CuraEngineBackend.py
  '';

  postInstall = ''
    mkdir -p $out/share/cura/resources/materials
    cp ${materials}/*.fdm_material $out/share/cura/resources/materials/
  '';

  postFixup = ''
    wrapPythonPrograms
  '';

  meta = with lib; {
    description = "3D printer / slicing GUI built on top of the Uranium framework";
    homepage = "https://github.com/Ultimaker/Cura";
    license = licenses.agpl3;
    platforms = platforms.linux;
    maintainers = with maintainers; [ abbradar ];
  };
}
