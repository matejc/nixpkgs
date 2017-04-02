{ stdenv, fetchgit, hidapi }:

stdenv.mkDerivation rec {
  name = "g810-led-${version}";
  version = "0.1.6";

  src = fetchgit {
    url = "https://github.com/MatMoul/g810-led.git";
    rev = "refs/tags/v${version}";
    sha256 = "1g4gi50kr46y83qzbj2dgmm7fcc29yzyy8psmnfcbyhhx47wwkc8";
  };

  buildInputs = [ hidapi ];

  installPhase = ''
    mkdir -p $out/bin
    mv bin/g810-led $out/bin
    mkdir -p $out/lib/udev/rules.d
    mv udev/g810-led.rules $out/lib/udev/rules.d
  '';

  meta = with stdenv.lib; {
    description = "Linux led controller for Logitech G410, G610, G810 and G910 Keyboards";
    homepage = https://github.com/MatMoul/g810-led;
    platforms = ["x86_64-linux"];
    maintainers = [ maintainers.matejc ];
    license = licenses.gpl3;
  };
}
