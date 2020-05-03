{ stdenv
, fetchFromGitLab
, cmake
, openpam
, python3
}:

stdenv.mkDerivation rec {
  version = "1.1.3";
  pname = "libpam-wrapper";

  src = fetchFromGitLab {
    domain = "gitlab.com";
    owner = "cwrap";
    repo = "pam_wrapper";
    rev = "ab2d90c6def33888db86755e23f3c12d417e187f";
    sha256 = "00mqhsashx7njrvxz085d0b88nizhdy7m3x17ip5yhvwsl63km6p";
  };

  nativeBuildInputs = [ cmake python3 ];

  buildInputs = [ openpam ];

  cmakeFlags = [
    "-DMAN_INSTALL_DIR=$out/share/man/man1"
  ];

  meta = with stdenv.lib; {
    description = "Wrapper for testing pam modules.";
    homepage = "https://cwrap.org/pam_wrapper.html";
    license = licenses.gpl3;
    maintainers = [ maintainers.elyhaka ];
    platforms = platforms.linux;
  };
}
