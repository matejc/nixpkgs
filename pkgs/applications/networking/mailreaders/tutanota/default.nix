{ stdenv, fetchurl, pkgs, recurseIntoAttrs }:
let
  name = "tutanota-${version}";
  version = "1.9.6";
  src = fetchurl {
    url = "https://github.com/tutao/tutanota/archive/tutanota-release-${version}.tar.gz";
    sha256 = "0y8934yjqrvjqdcsxla7y8fyzjjwxq0fa53lsqpqxbfgm2am246m";
  };

  nodePackages = import ../../../../top-level/node-packages.nix {
    inherit pkgs;
    inherit (pkgs) stdenv nodejs fetchurl fetchgit;
    neededNatives = [ pkgs.python ] ++ pkgs.lib.optional pkgs.stdenv.isLinux pkgs.utillinux;
    self = nodePackages;
    generated = ./node.nix;
  };

  build = nodePackages.buildNodePackage {
    inherit name;
    src = [ src ];
    buildInputs = nodePackages.nativeDeps."tutanota" or [];
    deps = [
      nodePackages."merge-stream"
    ];
    peerDependencies = [
      nodePackages."gulp"
      nodePackages."gulp-concat"
      nodePackages."gulp-uglify"
      nodePackages."gulp-appcache"
      nodePackages."streamqueue"
      nodePackages."event-stream"
      nodePackages."gulp-clean"
      nodePackages."run-sequence"
      nodePackages."gulp-inject"
      nodePackages."gulp-html-replace"
      nodePackages."gulp-replace"
      nodePackages."gulp-less"
      nodePackages."gulp-sourcemaps"
      nodePackages."gulp-minify-css"
      nodePackages."gulp-filter"
      nodePackages."gulp-insert"
      nodePackages."gulp-gzip"
      nodePackages."karma"    # on node.nix upgrade: remove fsevents if not on darwin platform
      nodePackages."gulp-shell"
      nodePackages."mkdirp"
      nodePackages."request"
      nodePackages."async"
    ];

    buildPhase = ''
      cd web
      gulp dist
    '';

    installPhase = ''
      mkdir -p $out/share/tutanota
      find build -maxdepth 1 -execdir cp -r '{}' $out/share/tutanota \;
    '';

    meta = {
      description = "Tutanota is the end-to-end encrypted email client that enables you to communicate securely with anyone";
      homepage = https://tutanota.de/;
      maintainers = with stdenv.lib.maintainers; [ matejc ];
      license = stdenv.lib.licenses.gpl3;
    };
  };
in
  build
