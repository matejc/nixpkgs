{ stdenv, fetchFromGitHub, rustNightlyPlatform, freetype, fontconfig, xclip
, cacert, cmake, pkgconfig, xorg }:

with rustNightlyPlatform;

buildRustPackage rec {
  name = "alacritty-${version}";
  version = "20170412";

  src = fetchFromGitHub {
    owner = "jwilm";
    repo = "alacritty";
    rev = "7bc1691b0f592aeb0ccbe8f9c98cfabf5c6bbca4";
    sha256 = "0nl9qmfyk450kapp3bprr1qqnhm77yas0k2bf6jh4rr6y4i92y8i";
  };

  depsSha256 = "1vag8dxz67qvrp5x5xccy88aibxy2ih1bz14bmjgi9zwrv17gz6v";

  buildInputs = [ cmake pkgconfig xorg.libX11 xorg.libXcursor xorg.libXxf86vm xorg.libXi freetype fontconfig xclip ];

  doCheck = false;
}
