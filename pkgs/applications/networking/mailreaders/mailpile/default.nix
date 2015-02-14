{ stdenv, fetchgit, pythonPackages, gnupg1orig, makeWrapper, openssl, gettext }:

pythonPackages.buildPythonPackage rec {
  name = "mailpile-${version}";
  version = "0.4.3";

  src = fetchgit {
    url = "git://github.com/pagekite/Mailpile";
    rev = "refs/tags/${version}";
    sha256 = "1zac75in4m543cjmsig42jikgr7zdrfl2637xmh6q3mbcf5mgi0y";
  };

  patchPhase = ''
    substituteInPlace scripts/compile-messages.sh \
      --replace "/bin/bash" "${stdenv.shell}"

    # so that tests work
    export HOME=$PWD/home
    mkdir -p $HOME
  '';

  buildInputs = [ gettext pythonPackages.nose pythonPackages.mock ];

  propagatedBuildInputs = with pythonPackages; [
    makeWrapper pillow jinja2 spambayes pythonPackages.lxml
    python.modules.readline pgpdump gnupg1orig
  ];

  postInstall = ''
    wrapProgram $out/bin/mailpile \
      --prefix PATH ":" "${gnupg1orig}/bin:${openssl}/bin"
  '';

  meta = with stdenv.lib; {
    description = "A modern, fast web-mail client with user-friendly encryption and privacy features";
    homepage = https://www.mailpile.is/;
    license = map (getAttr "shortName") [ licenses.asl20 licenses.agpl3 ];
    platforms = platforms.linux;
    maintainers = [ maintainers.iElectric ];
  };
}
