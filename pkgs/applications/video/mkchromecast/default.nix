{ stdenv, lib, fetchgit, python, makeWrapper, ffmpeg-full, youtubeDL
, pulseaudioFull, lame, libnotify, gdk_pixbuf }:

with python.pkgs;
let
  deps = [ PyChromecast soco flask netifaces setuptools requests mutagen psutil
    pyqt5 pygobject3 urllib3 chardet certifi idna protobuf six zeroconf enum34
    werkzeug jinja2 markupsafe click itsdangerous sip ];
  sitePackagesPath = lib.makeSearchPathOutput "out" python.sitePackages deps;
  giTypelibPath = lib.makeSearchPathOutput "out" "lib/girepository-1.0" [
    libnotify gdk_pixbuf
  ];
  paths = lib.makeSearchPathOutput "out" "bin" [
    youtubeDL pulseaudioFull lame ffmpeg-full
  ];
in
stdenv.mkDerivation rec {
  name = "mkchromecast-${version}";
  version = "20180424";

  src = fetchgit {
    url = "https://github.com/muammar/mkchromecast";
    rev = "ae96969c62d07cf6a3d168e115e07c3d9f74e900";
    sha256 = "08smaqsih8i7xf100hnwh82xdxi74zlyv3a1psybknvbjzk3qgki";
  };

  buildInputs = [ makeWrapper ];

  buildPhase = ''
    true
  '';

  installPhase = ''
    mkdir -p $out/{bin,share/man,${python.sitePackages}/mkchromecast}
    cp -r bin $out/${python.sitePackages}/mkchromecast/bin
    cp -r man $out/share/man/man1
    cp -r mkchromecast $out/${python.sitePackages}/mkchromecast/mkchromecast

    makeWrapper ${python}/bin/python $out/bin/mkchromecast \
      --add-flags $out/${python.sitePackages}/mkchromecast/bin/mkchromecast \
      --prefix PYTHONPATH : $out/${python.sitePackages}:${sitePackagesPath} \
      --prefix PATH : ${paths} \
      --prefix GI_TYPELIB_PATH : ${giTypelibPath}
  '';

  doCheck = false;
}
