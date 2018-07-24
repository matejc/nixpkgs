{ stdenv, fetchurl, fetchgit, makeWrapper, firefox, patchelfUnstable }:
let
  patchelfWithFix = patchelfUnstable.overrideDerivation (old: {
    src = fetchgit {
      url = git://github.com/ezquat/patchelf;
      rev = "037feff77a6f6ec777a5d615b4c1db877033b681";
      sha256 = "0xj9mvnd6bhr67q3xcyd4i71s6yi6p1wds49ci32672ag990rmf9";
    };
  });
in
stdenv.mkDerivation rec {
  name = "browsh-${version}";
  version = "1.4.0";
  src = fetchurl {
    url = "https://github.com/browsh-org/browsh/releases/download/v${version}/browsh_${version}_linux_amd64.deb";
    sha256 = "0r9hvsl8vbh5vsxz7nz3d6njswf7q8b30smrwmkvnqli5lyd3jws";
    name = "${name}.deb";
  };
  buildInputs = [ makeWrapper ];
  buildCommand = ''
    mkdir -p $out
    ar p $src data.tar.gz | tar -C $out -xz
    mv $out/usr/local/bin $out/
    rmdir $out/usr/local
    rmdir $out/usr
    ${patchelfWithFix}/bin/patchelf $out/bin/browsh --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)"
    wrapProgram $out/bin/browsh \
      --prefix PATH : ${firefox}/bin
  '';
}
