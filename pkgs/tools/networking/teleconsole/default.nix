{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "teleconsole-${version}";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/gravitational/teleconsole/releases/download/${version}/teleconsole-v${version}-linux-amd64.tar.gz";
    sha256 = "0fsk7rf0pxn5i36b1fadcarbfxdxkrgnqcvszc0sv9y8la78vh5w";
  };

  unpackPhase = "tar xvzf $src";

  installPhase = ''
    mkdir -p $out/bin
    mv teleconsole $out/bin/teleconsole
    patchelf \
      --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      $out/bin/teleconsole
  '';
}
