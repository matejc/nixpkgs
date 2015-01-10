{ stdenv, fetchurl, pythonPackages }:

pythonPackages.buildPythonPackage rec {
  name = "tiddlyweb-${version}";
  version = "2.4.0";

  src = fetchurl {
    url = "https://pypi.python.org/packages/source/t/tiddlyweb/${name}.tar.gz";
    sha256 = "1nsdhkgh4a6gw7rf53kb62mbz56ivjx8sj98y46s56xv5l89czdz";
  };

  propagatedBuildInputs = with pythonPackages; [ python_mimeparse html5lib
    simplejson selector httpexceptor ];

  meta = with stdenv.lib; {
    description = "An optionally headless, extensible HTTP datastore for tiddlers";
    homepage = http://tiddlyweb.com/;
    license = licenses.bsd3;
    platforms = platforms.unix;
    maintainers = [ maintainers.matejc ];
  };
}
