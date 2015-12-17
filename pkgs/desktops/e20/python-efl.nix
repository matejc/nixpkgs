{ stdenv, pkgconfig, e20, dbus, fetchurl, python27Packages }:
stdenv.mkDerivation rec {
  name = "python-efl-${version}";
  version = "1.16.0";
  src = fetchurl {
    url = "http://download.enlightenment.org/rel/bindings/python/${name}.tar.gz";
    sha256 = "1ihay90agl2jx12m7jj8j1cspd7vsak1w7q95rhb6r2srkq0ppxk";
  };
  preConfigure = ''
    export NIX_CFLAGS_COMPILE="$(pkg-config --cflags efl) -I${python27Packages.dbus}/include/dbus-1.0 $NIX_CFLAGS_COMPILE"
  '';
  buildInputs = [ pkgconfig e20.efl e20.elementary python27Packages.python ];
  installPhase = ''
    python setup.py install --prefix=$out
  '';
  meta = with stdenv.lib; {
    description = "Python bindings for EFL and Elementary";
    homepage = http://enlightenment.org/;
    maintainers = with maintainers; [ matejc tstrobel ftrvxmtrx ];
    platforms = platforms.linux;
    license = licenses.gpl3;
   };
}
