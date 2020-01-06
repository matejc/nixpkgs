{ stdenv, fetchurl, perlPackages }:
perlPackages.buildPerlPackage rec {
  pname = "shelldap";
  version = "1.5.0";
  src = fetchurl {
    url = "https://bitbucket.org/mahlon/shelldap/downloads/shelldap-${version}.tar.gz";
    sha256 = "1hf342p22039ffg53mi0zpbxs64pzvxjk29420bvp4qkgkhqfdgf";
  };
  buildInputs = with perlPackages; [ perl YAMLSyck NetLDAP AlgorithmDiff IOSocketSSL AuthenSASL TermReadLineGnu TermShell TieIxHash ];
  prePatch = ''
    touch Makefile.PL
  '';
  installPhase = ''
    runHook preInstall
    install -Dm555 -t $out/bin shelldap
    runHook preInstall
  '';
  outputs = [ "out" ];
  meta = with stdenv.lib; {
    homepage = "https://bitbucket.org/mahlon/shelldap/";
    description = "A handy shell-like interface for browsing LDAP servers and editing their content";
    license = with licenses; [ bsd3 ];
    maintainers = with maintainers; [ tobiasBora ];
    platforms = platforms.linux;
  };
}
