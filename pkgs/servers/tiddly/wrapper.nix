{ stdenv, buildEnv, tiddlyWebPlugins, tiddlyweb, tiddlywebwiki, python, lib
, makeWrapper }:
let
  deps = buildEnv {
    name = "tiddly-wrapper-deps";
    paths = [ tiddlyweb tiddlywebwiki ] ++ (
      lib.mapAttrsToList
      (n: v: v)
      (lib.filterAttrs (n: v: lib.isDerivation v) tiddlyWebPlugins)
    );
    pathsToLink = [ "/lib/${python.libPrefix}/site-packages" ];
    ignoreCollisions = true;
  };
in
stdenv.mkDerivation {
  name = "tiddly-wrapper";
  unpackPhase = "true";
  buildInputs = [ makeWrapper ];
  installPhase = ''
    mkdir -p $out/bin

    makeWrapper ${tiddlywebwiki}/bin/twinstance $out/bin/twinstance \
      --prefix "PYTHONPATH" ":" "${deps}/lib/${python.libPrefix}/site-packages"

    makeWrapper ${tiddlyweb}/bin/twanager $out/bin/twanager \
      --prefix "PYTHONPATH" ":" "${deps}/lib/${python.libPrefix}/site-packages"
  '';
}
