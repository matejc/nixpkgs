{ stdenv, fetchurl, qmakeHook, qtbase, qtquickcontrols, makeQtWrapper }:

let
  version = "1.1.1";
in
stdenv.mkDerivation {
  name = "flow-pomodoro-${version}";
  src = fetchurl {
    url = "https://github.com/iamsergio/flow-pomodoro/archive/v${version}.tar.gz";
    sha256 = "0md8qc9brnyrjcrp27bzmwmg8ry6pn53cci6d8iprpapzvf2479i";
  };

  buildInputs = [
    qtbase qmakeHook qtquickcontrols makeQtWrapper
  ];

  installFlags = [ "INSTALL_ROOT=$(out)" ];

  postInstall = ''
    wrapQtProgram "$out/bin/flow"
  '';

  meta = {
    homepage = "https://github.com/iamsergio/flow-pomodoro";
    description = "App that blocks distractions while you work";
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.unix;
    maintainers = [ stdenv.lib.maintainers.matejc ];
  };
}
