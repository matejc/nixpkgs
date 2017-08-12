{ mkDerivation, lib, fetchFromGitHub, cmake, python3, qtbase, curaengine }:
let
  materials = fetchFromGitHub {
    owner = "Ultimaker";
    repo = "fdm_materials";
    rev = version;
    sha256 = "1ng1p9q6xsxn8yxpgcwnwibnlspccgzjqjwlkmqhmhr8387xzdq2";
  };
  version = "2.6.1";
in
mkDerivation rec {
  name = "cura-${version}";
  version = "2.6.1";

  src = fetchFromGitHub {
    owner = "Ultimaker";
    repo = "Cura";
    rev = version;
    sha256 = "03rsw6nafg3y9if2dlnzsj6c9x3x7cv6gs4a1w84jaq4p1f8fcsd";
  };

  buildInputs = [ qtbase ];
  propagatedBuildInputs = with python3.pkgs; [ uranium zeroconf pyserial ];
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
    homepage = https://github.com/Ultimaker/Cura;
    license = licenses.agpl3;
    platforms = platforms.linux;
    maintainers = with maintainers; [ abbradar ];
  };
}
