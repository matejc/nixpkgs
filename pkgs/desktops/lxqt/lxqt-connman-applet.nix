{ stdenv, fetchgit, cmake }:
stdenv.mkDerivation rec {
  name = "lxqt-connman-applet";

  src = fetchgit {
    url = git://github.com/surlykke/lxqt-connman-applet;
    rev = "41126c9d9c5c348624488398aff24126be49a6c3";
    sha256 = "1m9mq5k0inay0qhwqcsnj7lsdiq4nm7p57sydqrfkr43hxyyqhc8";
  };

  buildInputs = [ cmake ];
}
