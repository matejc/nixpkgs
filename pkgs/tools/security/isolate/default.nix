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
        substituteInPlace rules.c --replace 'set_dir_action("bin");' 'set_dir_action("bin=/run/current-system/sw/bin");'
        substituteInPlace rules.c --replace 'set_dir_action("lib");' 'set_dir_action("lib=/run/current-system/sw/lib");'
        substituteInPlace rules.c --replace 'set_dir_action("usr");' 'set_dir_action("nix");'
    '';
}
