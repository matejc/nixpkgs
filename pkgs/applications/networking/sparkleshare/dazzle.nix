{ stdenv, fetchurl, makeWrapper, git, iproute }:
stdenv.mkDerivation rec {
  name = "dazzle-${version}";
  version = "20150119";
  rev = "b5138797e1a16a798cc58c5bf921511b5b8dd6d7";
  src = fetchurl {
    url = "https://github.com/hbons/Dazzle/archive/${rev}.tar.gz";
    sha256 = "1g4f23dbpqznp4hw6my07vs7g34dp8kd6w4049a3vpaym7v1m7zq";
  };
  buildInputs = [ makeWrapper ];
  installPhase = ''
    mkdir -p $out/bin
    cp dazzle.sh $out/bin/dazzle
    chmod +x $out/bin/dazzle
    wrapProgram $out/bin/dazzle \
      --prefix PATH : ${git}/bin:${iproute}/bin
  '';
}
