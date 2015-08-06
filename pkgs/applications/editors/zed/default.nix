{ stdenv, buildEnv, fetchgit, makeWrapper, writeScript, fetchurl, zip, pkgs
, node_webkit, nodejs, glib }:

let
  name = "zed-${version}";
  version = "1.1.0";

  # When upgrading node.nix / node packages:
  #   fetch package.json from Zed's repository
  #   run `npm2nix package.json node.nix`
  #   and replace node.nix with new one
  nodePackages = import ../../../../pkgs/top-level/node-packages.nix {
    inherit pkgs;
    inherit (pkgs) stdenv fetchurl fetchgit;
    inherit nodejs;
    neededNatives = [ pkgs.python ] ++ pkgs.lib.optional pkgs.stdenv.isLinux pkgs.utillinux;
    self = nodePackages;
    generated = ./node.nix;
  };

  node_env = buildEnv {
    name = "node_env";
    paths = [ nodePackages."body-parser" nodePackages.express
      nodePackages.request nodePackages.tar nodePackages.ws ];
    pathsToLink = [ "/lib" ];
    ignoreCollisions = true;
  };

  zed = stdenv.mkDerivation rec {
    inherit name version;

    src = fetchgit {
        url = "git://github.com/matejc/zed";
        rev = "74dd7c89238af95d1ece7d5b91f875316bd50a0c";
        sha256 = "0br7yhwzgqnsin3h0wg4l48ixjq7japrybzr8mqasjdq6xawww4n";
      };

    buildInputs = [ makeWrapper zip ];

    dontBuild = true;

    installPhase = ''
      export NWPATH="${node_webkit}/share/nwjs";

      mkdir -p $out/zed
      cp -r ${src}/app/* $out/zed/
      echo "#!${stdenv.shell}" > $out/zed/zed-bin
      echo "$NWPATH/nw $out/zed/" >> $out/zed/zed-bin
      chmod +x $out/zed/zed-bin
    '';

    postFixup = ''
      wrapProgram $out/zed/zed-bin \
        --prefix NODE_PATH : ${node_env}/lib/node_modules \
        --prefix 'LD_LIBRARY_PATH' ':' '${glib}/lib'
    '';
  };

  zed_script = writeScript "zed.sh" ''
    if [[ $1 == http://* ]] || [[ $1 == https://* ]]; then
        PROJECT=$1
    elif [ "" != "$1" ]; then
       PROJECT=$(readlink -f $1)
    fi
    ${zed}/zed/zed-bin $PROJECT
  '';

in stdenv.mkDerivation rec {
  inherit name version;

  src = zed;

  installPhase = ''
    mkdir -p $out/bin
    ln -s ${zed_script} $out/bin/zed
  '';

  meta = {
    description = "A fully offline-capable, open source, keyboard-focused, text and code editor for power users";
    license = stdenv.lib.licenses.mit;
    homepage = http://zedapp.org/;
    maintainers = [ stdenv.lib.maintainers.matejc ];
    platforms = stdenv.lib.platforms.linux;
  };
}
