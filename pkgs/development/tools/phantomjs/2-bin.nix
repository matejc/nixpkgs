{ stdenv, fetchurl, glibc, buildEnv, openssl, fontconfig, freetype
, libjpeg_original, libpng12, zlib, icu52 }:
let

  pjsEnv = buildEnv {
    name = "pjsEnv";
    paths = [ openssl fontconfig freetype libjpeg_original libpng12 zlib
      stdenv.cc.cc icu52 ];
  };

in
stdenv.mkDerivation rec {
  name = "phantomjs-2.0.0";
  src = fetchurl {
    url = "https://s3.amazonaws.com/travis-phantomjs/${name}-ubuntu-14.04.tar.bz2";
    sha256 = "0h221wl4mcmicb1yywp87jgxqnmcxg7csldsfrz0nh9vq1aj618m";
  };

  buildInputs = [ ];

  dontPatchELF = true;
  dontStrip    = true;

  sourceRoot = ".";

  installPhase = ''
    patchelf \
      --set-interpreter "${glibc}/lib/ld-linux-x86-64.so.2" \
      --set-rpath "${pjsEnv}/lib:$out/lib" \
      ./phantomjs

    patchelf --shrink-rpath ./phantomjs

    mkdir -p $out/bin
    cp ./phantomjs $out/bin/
  '';

  meta = {
    description = "Headless WebKit with JavaScript API";
    longDescription = ''
      PhantomJS is a headless WebKit with JavaScript API.
      It has fast and native support for various web standards:
      DOM handling, CSS selector, JSON, Canvas, and SVG.

      PhantomJS is an optimal solution for:
      - Headless Website Testing
      - Screen Capture
      - Page Automation
      - Network Monitoring
    '';

    homepage = http://phantomjs.org/;
    license = stdenv.lib.licenses.bsd3;

    maintainers = [ stdenv.lib.maintainers.matejc ];
    platforms = ["x86_64-linux"];
  };
}
