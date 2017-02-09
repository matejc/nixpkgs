{ stdenv, fetchFromGitHub, rustNightlyPlatform, freetype, fontconfig, xclip
, cacert, cmake, pkgconfig, xorg,

curl, strace, busybox }:

with rustNightlyPlatform;

buildRustPackage rec {
  name = "alacritty-${version}";
  version = "20170206";

  src = fetchFromGitHub {
    owner = "jwilm";
    repo = "alacritty";
    rev = "12cd04fea2d49f712226b75922bc2c035729c201";
    sha256 = "0f0rnsrbdd79k5v1x9d94sihs49gxg08901l76k00rcs0bmwsqyz";
  };

  depsSha256 = "1yv7nhppixgf62yy3is8wlbcpsgid3qjwp2aaj54c456k4gzhxpd";

  buildInputs = [ cmake pkgconfig xorg.libX11 xorg.libXcursor xorg.libXxf86vm xorg.libXi freetype fontconfig xclip ];

  doCheck = false;
}
