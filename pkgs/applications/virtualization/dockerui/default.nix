{ stdenv, fetchgit, go, makeWrapper }:

stdenv.mkDerivation rec {
  name = "dockerui-${version}";
  version = "dev";

  src = fetchgit {
    url = "git://github.com/crosbymichael/dockerui";
    rev = "4dddd6227b9cbc0570bcce7ea20784eda4814e1d";
    sha256 = "01qaj4g35y3nvwf5k1jpb0pnvg9fq8vcd5iv8ipj5hvcks4ghg5a";
  };

  buildInputs = [ go makeWrapper ];

  buildPhase = ''
    go build dockerui.go
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp ./dockerui $out/bin
    cp -r ./assets $out
    cp -r ./css $out
    cp -r ./images $out
    cp -r ./js $out
    cp -r ./lib $out
    cp -r ./partials $out
    cp ./index.html $out

    wrapProgram $out/bin/dockerui --add-flags "-p=\":9999\" -a=\"$out\" -e=\"http://localhost:9990/\""
  '';

  meta = {
    homepage = http://syncthing.net/;
    description = "Replaces Dropbox and BitTorrent Sync with something open, trustworthy and decentralized";
    license = with stdenv.lib.licenses; mit;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
