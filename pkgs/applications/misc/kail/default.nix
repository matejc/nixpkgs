{ stdenv, buildGoPackage, fetchgit, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "kail-${version}";
  version = "0.6.0";
  rev = "v${version}";

  goPackagePath = "github.com/boz/kail";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/boz/kail";
    sha256 = "17ybcncdjssil4bn3n2jp1asfcpl8vj560afb2mry9032qrryvx9";
  };

  goDeps = ./deps.nix;

  meta = with stdenv.lib; {
    homepage = https://github.com/boz/kail;
    description = "kubernetes log viewer";
    platforms = platforms.linux;
    license = licenses.mit;
    maintainers = with maintainers; [ matejc ];
  };
}
