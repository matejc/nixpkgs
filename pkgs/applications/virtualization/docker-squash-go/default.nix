{ stdenv, buildGoPackage, fetchgit }:

buildGoPackage rec {
  name = "docker-squash-${version}";
  version = "20160817-${stdenv.lib.strings.substring 0 7 rev}";
  rev = "3dc9b8d4d3a69071eebe8a64cdc459ff5a2cb8be";

  goPackagePath = "github.com/jwilder/docker-squash";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/jwilder/docker-squash";
    sha256 = "1vs5l9fxxjzfx7jaf345cdw4vzkkniz9xqxp3g3hrpmij48w0jah";
  };

  goDeps = ./deps.json;
}
