{ stdenv, fetchFromGitHub, pkgconfig, gtk3, intltool, automake, autoconf }:

stdenv.mkDerivation rec {
  name = "connman-gtk-${version}";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "jgke";
    repo = "connman-gtk";
    rev = "v${version}";
    sha256 = "19sn2z5ykgwb8d8rd9sq1d746lgpjfjv8753h0syrv7bx4vik9nf";
  };

  preConfigure = ''
    ln -sf ${intltool}/share/aclocal/intltool.m4 ./m4/intltool.m4
    ./autogen.sh
  '';

  configureFlags = [ "--enable-status-icon=yes" ];

  buildInputs = [
    pkgconfig gtk3 intltool automake autoconf
  ];

  meta = with stdenv.lib; {
    homepage = https://github.com/jgke/connman-gtk;
    description = "GTK GUI for ConnMan";
    maintainers = [ maintainers.matejc ];
    license = licenses.gpl2;
    platforms = platforms.linux;
  };
}
