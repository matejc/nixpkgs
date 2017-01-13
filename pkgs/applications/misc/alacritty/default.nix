{ stdenv, fetchFromGitHub, rustNightlyPlatform, freetype, fontconfig, xclip
, cacert, cmake, pkgconfig, xorg }:

with rustNightlyPlatform;

buildRustPackage rec {
  name = "alacritty-${version}";
  version = "20170112";

  src = fetchFromGitHub {
    owner = "jwilm";
    repo = "alacritty";
    rev = "32cfca772798d13e9c96c5d66250f6ca5ae9baef";
    sha256 = "0615zfprfwklarh433n3k0575zrx9pz44z1v9vaqma7x59s23f9l";
  };

  depsSha256 = "1v61i3cd2r1il115k9xxni1pnc9lwndgxfn00glg1n7ddpvdn31y";

  buildInputs = [ cmake pkgconfig xorg.libX11 xorg.libXcursor xorg.libXxf86vm xorg.libXi freetype fontconfig xclip ];

  doCheck = false;
}
