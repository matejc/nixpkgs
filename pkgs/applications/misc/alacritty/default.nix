{ stdenv, fetchFromGitHub, rustNightlyPlatform, freetype, fontconfig, xclip
, cacert, cmake, pkgconfig, xorg }:

with rustNightlyPlatform;

buildRustPackage rec {
  name = "alacritty-${version}";
  version = "20170209";

  src = fetchFromGitHub {
    owner = "jwilm";
    repo = "alacritty";
    rev = "fbc7b7227171b41d96ca52df52e4cf1833f5fc6f";
    sha256 = "02ga89szr7qrbydibdgmn2grjnkhwk2rm4rla4pih52ibp7yd6cs";
  };

  depsSha256 = "1yv7nhppixgf62yy3is8wlbcpsgid3qjwp2aaj54c456k4gzhxpd";

  buildInputs = [ cmake pkgconfig xorg.libX11 xorg.libXcursor xorg.libXxf86vm xorg.libXi freetype fontconfig xclip ];

  doCheck = false;
}
