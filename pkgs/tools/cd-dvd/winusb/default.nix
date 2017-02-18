{ stdenv, fetchurl, wxGTK30, gksu, makeWrapper, parted }:

stdenv.mkDerivation rec {
  name = "winusb-${version}";
  version = "20170130";

  src = fetchurl {
    url = "https://github.com/slacka/WinUSB/archive/599f00cdfd5c931056c576e4b2ae04d9285c4192.tar.gz";
    sha256 = "0fym7p192q4w1b2naxz09sflwf0dv93id900gwlzlj8j4jcqbbik";
  };

  buildInputs = [ wxGTK30 makeWrapper ];

  postInstall = ''
    wrapProgram $out/bin/winusbgui \
      --prefix PATH : "${gksu}/bin:${parted}/bin"
  '';

  meta = with stdenv.lib; {
    homepage = https://github.com/slacka/WinUSB;
    description = "A Linux program to create Windows USB stick installer from a real Windows DVD or an image";
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = [ maintainers.matejc ];
  };
}
