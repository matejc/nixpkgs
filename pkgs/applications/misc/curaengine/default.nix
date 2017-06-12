{ stdenv, fetchFromGitHub, cmake, libarcus }:

stdenv.mkDerivation rec {
  name = "curaengine-${version}";
  version = "2.5.0";

  src = fetchFromGitHub {
    owner = "Ultimaker";
    repo = "CuraEngine";
    rev = version;
    sha256 = "0ci7gb0lxzbh4fhwnks5hc2zpy08db8h7vx0kyr9fk6rc396wbn5";
  };

  nativeBuildInputs = [ cmake ];
  buildInputs = [ libarcus ];

  enableParallelBuilding = true;

  meta = with stdenv.lib; {
    description = "A powerful, fast and robust engine for processing 3D models into 3D printing instruction";
    homepage = "https://github.com/Ultimaker/CuraEngine";
    license = licenses.agpl3;
    platforms = platforms.linux;
    maintainers = with maintainers; [ abbradar ];
  };
}
