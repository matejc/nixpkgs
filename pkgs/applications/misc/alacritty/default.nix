{ stdenv, fetchFromGitHub, rustNightlyPlatform, freetype, fontconfig, xclip
, cacert, cmake, pkgconfig, xorg,

curl, strace, busybox }:

with rustNightlyPlatform;

buildRustPackage rec {
  name = "alacritty-${version}";
  version = "20170127";

  src = fetchFromGitHub {
    owner = "jwilm";
    repo = "alacritty";
    rev = "08f348ecea0b782cd8539850abe6309d0e5b06c9";
    sha256 = "0bjwb6y39721bhlgbk2hyy0hqgw8znvj4y0ms5pgsvckd7mjszi8";
  };

  depsSha256 = "1362zs86cavnsrq26kdb13m0bp64dcqb1vqsfhlvh8aagqjsan4r";

  buildInputs = [ cmake pkgconfig xorg.libX11 xorg.libXcursor xorg.libXxf86vm xorg.libXi freetype fontconfig xclip ];

  doCheck = false;
}
