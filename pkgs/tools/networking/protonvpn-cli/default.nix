{ stdenv, makeWrapper, fetchgit, which, openvpn, python, dialog, wget, procps
, coreutils, lib, fetchurl, gnused }:
let
    deps = [ which openvpn python dialog procps coreutils gnused ];
    updateResolvConf = fetchurl {
        url = https://raw.githubusercontent.com/ProtonVPN/scripts/d5d0be1a8e4cbc062aedb2e34f8cbe97184d233a/update-resolv-conf.sh;
        sha256 = "020lrpz4237qccwklqj3vyzkz0rk5xw4zq1w9h5zpx15h0z6pnp6";
        name = "update-resolv-conf";
    };
in
stdenv.mkDerivation {
    name = "protonvpn-cli-20180610";
    src = fetchgit {
        url = git://github.com/ProtonVPN/protonvpn-cli;
        rev = "114d461c7c63e7db52d8af7d88731d38e12575cd";
        sha256 = "0zyfkmcbcbn13aa9i69yd1chsdj4qsdy75rhlvzslxm70mm49mld";
    };
    buildInputs = [ makeWrapper ];
    buildPhase = ''
        substituteInPlace protonvpn-cli.sh \
            --replace '"-install"|"--install") install_cli' '"-install"|"--install") echo Error: Already installed with Nix >&2; exit 1' \
            --replace '"-uninstall"|"--uninstall") uninstall_cli' '"-uninstall"|"--uninstall") echo Error: Use Nix to uninstall >&2; exit 1' \
            --replace '"update"|"-update"|"--update") update_cli' '"update"|"-update"|"--update") echo Error: Use Nix to update >&2; exit 1' \
            --replace '$(basename $0)' "protonvpn-cli" \
            --replace "/etc/openvpn" "$out/etc/openvpn" \
            --replace "| openvpn" "| sed \"s|/etc/openvpn/update-resolv-conf|$out/etc/openvpn/update-resolv-conf|g\" | openvpn"
    '';
    installPhase = ''
        mkdir -p $out/etc/openvpn
        cp ${updateResolvConf} $out/etc/openvpn/update-resolv-conf
        chmod +x $out/etc/openvpn/update-resolv-conf
        mkdir -p $out/bin
        cp protonvpn-cli.sh $out/bin/protonvpn-cli
        wrapProgram $out/bin/protonvpn-cli \
            --prefix PATH : ${lib.makeBinPath deps}
    '';
}
