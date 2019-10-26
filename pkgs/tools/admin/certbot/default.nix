{ stdenv, python3Packages, fetchFromGitHub, dialog }:

python3Packages.buildPythonApplication rec {
  pname = "certbot";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = pname;
    repo = pname;
    rev = "v${version}";
    sha256 = "1s32xg2ljz7ci78wc8rqkjvgrz7vprb7fkznrlf9a4blm55pp54c";
  };

  propagatedBuildInputs = with python3Packages; [
    ConfigArgParse
    acme
    configobj
    cryptography
    distro
    josepy
    parsedatetime
    psutil
    pyRFC3339
    pyopenssl
    pytest
    pytz
    six
    zope_component
    zope_interface
  ];
  buildInputs = [ dialog ] ++ (with python3Packages; [ mock gnureadline ]);

  patchPhase = ''
    substituteInPlace certbot/notify.py --replace "/usr/sbin/sendmail" "/run/wrappers/bin/sendmail"
    substituteInPlace certbot/util.py --replace "sw_vers" "/usr/bin/sw_vers"
  '';

  postInstall = ''
    for i in $out/bin/*; do
      wrapProgram "$i" --prefix PYTHONPATH : "$PYTHONPATH" \
                       --prefix PATH : "${dialog}/bin:$PATH"
    done
  '';

  doCheck = false; # On Hydra Darwin tests fail with "Too many open files".
                   #
                   # On Linux, the installCheck phase fails because of
                   # the missing --numprocesses pytest flag

  meta = with stdenv.lib; {
    homepage = src.meta.homepage;
    description = "ACME client that can obtain certs and extensibly update server configurations";
    platforms = platforms.unix;
    maintainers = [ maintainers.domenkozar ];
    license = licenses.asl20;
  };
}
