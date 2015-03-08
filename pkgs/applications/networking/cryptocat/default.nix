{ pkgs }:
let
  nodePackages = import ../../../top-level/node-packages.nix {
    inherit pkgs;
    inherit (pkgs) stdenv nodejs fetchurl fetchgit;
    neededNatives = [ pkgs.python ] ++ pkgs.lib.optional pkgs.stdenv.isLinux pkgs.utillinux;
    self = nodePackages;
    generated = ./node.nix;
  };
in rec {
  build = nodePackages.buildNodePackage rec {
    name = "cryptocat-${version}";
    version = "2.2.2";
    src = [ (pkgs.fetchurl {
      url = "https://github.com/cryptocat/cryptocat/archive/v${version}.zip";
      sha256 = "0vgr6kjv55pq6wzjy8f3y2n9avcg96ns8w3d3y6pdb2c8adm95vd";
    }) ];
    buildInputs = [ pkgs.unzip ];
    deps = [ nodePackages.express ];
    peerDependencies = [];
  };
}
