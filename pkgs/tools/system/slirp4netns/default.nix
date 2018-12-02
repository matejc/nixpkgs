{ stdenv, fetchFromGitHub, autoconf, automake }:
stdenv.mkDerivation rec {
  name = "slirp4netns-${version}";
  version = "20181119";

  src = fetchFromGitHub {
    owner = "rootless-containers";
    repo = "slirp4netns";
    rev = "5e4789b9a21cab3315801e1750670e10a1c86a2a";
    sha256 = "07fsb78qaslgv2j65p5d5kb3sa6bzf05ickj1yr7fmmzllppp1sg";
  };

  nativeBuildInputs = [ autoconf automake ];

  preConfigure = ''
    ./autogen.sh
  '';
}
