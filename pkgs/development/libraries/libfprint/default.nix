{ stdenv, fetchgit, pkgconfig, libtool, automake, autoconf, xorg, libusb
, pixman, glib, nss, nspr, gdk_pixbuf }:

stdenv.mkDerivation rec {
  name = "libfprint-2017-12-12";

  src = fetchgit {
    url = "git://cgit.freedesktop.org/libfprint/libfprint";
    rev = "d35da0ce99c11bf43d06c2400f9fec6580814919";
    sha256 = "1z9f3cwyhi10q2xqy33z516s259c56njzq1fbl5zn1yngfzlshk6";
  };

  preConfigure = ''
    substituteInPlace autogen.sh --replace "--enable-examples-build" ""
    substituteInPlace autogen.sh --replace "--enable-x11-examples-build" ""
    substituteInPlace Makefile.am --replace "--enable-examples-build --enable-x11-examples-build" ""
    cat Makefile.am
    ./autogen.sh
  '';

  buildInputs = [ libusb pixman glib nss nspr gdk_pixbuf ];
  nativeBuildInputs = [ libtool automake autoconf pkgconfig xorg.libXv ];

  configureFlags = [ "--with-udev-rules-dir=$(out)/lib/udev/rules.d" ];

  meta = with stdenv.lib; {
    homepage = http://www.freedesktop.org/wiki/Software/fprint/libfprint/;
    description = "A library designed to make it easy to add support for consumer fingerprint readers";
    license = licenses.lgpl2;
    platforms = platforms.linux;
    maintainers = with maintainers; [ abbradar ];
  };
}
