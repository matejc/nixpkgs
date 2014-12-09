{ mailpile, lib, fetchgit, gettext }:

lib.overrideDerivation mailpile (oldAttrs: {
  name = "mailpile-dev";

  src = fetchgit {
    url = "git://github.com/pagekite/Mailpile";
    rev = "99d043b0a7a8802c13be3a5997c525e28742b9ec";
    sha256 = "1gkm5w65nl8fz3bays11i40qp6vg85w6rbzrs0g9xh4znvqzrm40";
  };

  doCheck = false;

  propagatedBuildInputs = [
    gettext
  ] ++ oldAttrs.propagatedBuildInputs;

})
