{ stdenv, fetchurl, pythonPackages, tiddlyWebPlugins, tiddlyweb, python, lib }:

pythonPackages.buildPythonPackage rec {
  name = "tiddlywebwiki-${version}";
  version = "0.69.0";

  src = fetchurl {
    url = "https://pypi.python.org/packages/source/t/tiddlywebwiki/${name}.tar.gz";
    sha256 = "0w5zsvckbqgkp5xqfr23f4fx8c67k5qsmvvw9dk1v2dka610yb2n";
  };

  propagatedBuildInputs = with pythonPackages; [
    tiddlyweb jinja2 tiddlyWebPlugins.cherrypy tiddlyWebPlugins.console
    tiddlyWebPlugins.atom
  ];

  meta = with stdenv.lib; {
    description = "TiddlyWeb is an open source HTTP API for storing and accessing flexible and composable microcontent, it is also a toolkit for tiddlers on the web and a robust server side for TiddlyWiki";
    homepage = http://tiddlyweb.com/;
    license = licenses.bsd3;
    platforms = platforms.unix;
    maintainers = [ maintainers.matejc ];
  };
}
