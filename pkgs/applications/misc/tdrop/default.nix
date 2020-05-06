{ stdenv, lib, fetchFromGitHub, makeWrapper
, xwininfo, xdotool, xprop }:

stdenv.mkDerivation rec {
  pname = "tdrop";
  version = "0.3.0";

  src = fetchFromGitHub {
    owner = "noctuid";
    repo = "tdrop";
    rev = "refs/tags/${version}";
    sha256 = "04hxxmryhn1c7kwz1xbh4f8j1yxka0j806dh8y3wa9pqds2ls8wh";
  };

  dontBuild = true;

  installFlags = [ "PREFIX=$(out)" ];

  postInstall = ''
    wrapProgram $out/bin/tdrop \
      --prefix PATH : ${lib.makeBinPath [ xwininfo xdotool xprop ]}
  '';

  nativeBuildInputs = [ makeWrapper ];

  meta = with stdenv.lib; {
    description = "A Glorified WM-Independent Dropdown Creator";
    homepage = "https://github.com/noctuid/tdrop";
    license = licenses.bsd2;
    platforms = platforms.linux;
    maintainers = with maintainers; [ wedens ];
  };
}
