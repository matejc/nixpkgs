{ nodePackages, fetchurl }:
nodePackages.buildNodePackage rec {
  name = "tiddlywiki-${version}";
  version = "5.1.7";
  bin = false;
  src = [
    (fetchurl {
      url = "http://registry.npmjs.org/tiddlywiki/-/${name}.tgz";
      name = "${name}.tgz";
      sha1 = "nfzm6dp1a2rsqigrmjg41l53zf24z6sp";
    })
  ];
  passthru.names = [ "tiddlywiki" ];
}
