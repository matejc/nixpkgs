# https://github.com/ioi/isolate
{ stdenv, fetchFromGitHub, libcap, asciidoc, libxslt, docbook_xml_xslt }:
stdenv.mkDerivation rec {
    name = "isolate-${version}";
    version = "1.4.1";
    src = fetchFromGitHub {
        owner = "ioi";
        repo = "isolate";
        rev = "v${version}";
        sha256 = "1mw5kq2ypkmawp95blxwzg9rivj4axfwc9dz6prfp8djihnagqg4";
    };
    buildInputs = [ libcap asciidoc libxslt.bin docbook_xml_xslt ];
    preConfigure = ''
        substituteInPlace Makefile --replace "a2x -f" "a2x --no-xmllint -f"
        substituteInPlace Makefile --replace "$(DESTDIR)/usr/local" "$out"
        substituteInPlace Makefile --replace "$(DESTDIR)/var/local" "$out"
        substituteInPlace Makefile --replace "install -m 4755 isolate" "install -m 755 isolate"
        substituteInPlace rules.c --replace 'set_dir_action("bin");' 'char *nix_profile_path; if (getenv("NIX_PROFILE_PATH")) { nix_profile_path = getenv("NIX_PROFILE_PATH"); } else { nix_profile_path = "/run/current-system/sw"; }; char *bin_dir = (char *) malloc(1+strlen(nix_profile_path)+8); strcpy(bin_dir, "bin="); strcat(bin_dir, nix_profile_path); strcat(bin_dir, "/bin"); set_dir_action(bin_dir);'
        substituteInPlace rules.c --replace 'set_dir_action("lib");' 'char *lib_dir = (char *) malloc(1+strlen(nix_profile_path)+8); strcpy(lib_dir, "lib="); strcat(lib_dir, nix_profile_path); strcat(lib_dir, "/lib"); set_dir_action(lib_dir);'
        substituteInPlace rules.c --replace 'set_dir_action("lib64:maybe");' '''
        substituteInPlace rules.c --replace 'set_dir_action("usr");' 'set_dir_action("nix/store");'
    '';
}
