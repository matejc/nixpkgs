{ stdenv, fetchurl, unzip, atomEnv, makeWrapper, utillinux, at-spi2-atk }:
stdenv.mkDerivation rec {
    name = "veonim-${version}";
    version = "0.22.0";

    src = fetchurl {
        url = "https://github.com/veonim/veonim/releases/download/${version}/${name}.zip";
        sha256 = "069kscf2x71ssy4srd17cvl58l9i35b577193rhz37l9grkfbkdy";
    };

    unpackCmd = ''
        unzip $src -d ./src
    '';

    dontBuild = true;
    dontConfigure = true;

    buildInputs = [ unzip makeWrapper ];

    installPhase = ''
        mkdir -p $out/{bin,share/veonim}

        cp -r . $out/share/veonim/

        find $out/share -type f -perm -0100 -exec patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" '{}' \;

        makeWrapper $out/share/veonim/veonim $out/bin/veonim \
            --prefix LD_LIBRARY_PATH : "$out/share/veonim:$out/share/veonim/swiftshader:${atomEnv.libPath}:${utillinux.out}/lib:${at-spi2-atk}/lib"
    '';
}
