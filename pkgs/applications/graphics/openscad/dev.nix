{ stdenv, fetchFromGitHub, qt5, libsForQt5
, bison, flex, eigen, boost, libGLU_combined, glew, opencsg, cgal
, mpfr, gmp, glib, pkgconfig, harfbuzz, gettext
, libzip
}:

stdenv.mkDerivation rec {
  version = "2019.01-RC1";
  name = "openscad-${version}";

  src = fetchFromGitHub {
    owner = "openscad";
    repo = "openscad";
    rev = "8b1ddc4b0b2a778a18d213b073f752a9bab05a45";
    sha256 = "1gzyk9g72ha6wmgpp4w4f0fphrww8c0xgz6ghpnf68iswg9gkvrn";
  };

  buildInputs = [
    bison flex eigen boost libGLU_combined glew opencsg cgal mpfr gmp glib
    pkgconfig harfbuzz gettext
    libzip
  ]
    ++ (with qt5; [qtbase qmake qtmultimedia])
    ++ (with libsForQt5; [qscintilla])
  ;

  qmakeFlags = [ "VERSION=${version}" ];

  doCheck = false;

  meta = {
    description = "3D parametric model compiler";
    longDescription = ''
      OpenSCAD is a software for creating solid 3D CAD objects. It is free
      software and available for Linux/UNIX, MS Windows and macOS.

      Unlike most free software for creating 3D models (such as the famous
      application Blender) it does not focus on the artistic aspects of 3D
      modelling but instead on the CAD aspects. Thus it might be the
      application you are looking for when you are planning to create 3D models of
      machine parts but pretty sure is not what you are looking for when you are more
      interested in creating computer-animated movies.
    '';
    homepage = http://openscad.org/;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.linux;
    maintainers = with stdenv.lib.maintainers;
      [ bjornfor raskin the-kenny ];
  };
}
