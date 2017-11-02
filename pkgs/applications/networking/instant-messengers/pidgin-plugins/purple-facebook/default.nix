{ stdenv, fetchFromGitHub, fetchhg, pidgin, glib, json_glib, mercurial, autoreconfHook } :


let
  version = "0.9.5";
  rev = "9ff9acf9fa14";
  pidginHg = fetchhg {
    url = "https://bitbucket.org/pidgin/main";
    # take from VERSION file
    inherit rev;
    sha256 = "06imlhsps4wrjgjb92zpaxprxfxl2pjb2x9pl859c8cryssrz2jv";
  };

in stdenv.mkDerivation rec {
  name = "purple-facebook-${version}";

  src = fetchFromGitHub {
    owner = "dequis";
    repo = "purple-facebook";
    rev = "v${version}-${rev}";
    sha256 = "0a1860bkzrmyxahm9rlxi80z335w491wzdaqaw6j9ccavbymhwhs";
  };

  postPatch = ''
    # we do all patching from update.sh in preAutoreconf
    echo "#!/bin/sh" > update.sh
  '';

  preAutoreconf = ''
    for FILE in $(cat MANIFEST_PIDGIN); do
        install -Dm644 "${pidginHg}/$FILE" "pidgin/$FILE" || true
    done

    touch $(cat MANIFEST_VOIDS)

    patchdir="$(pwd)/patches"
    pushd pidgin

    for patch in $(ls -1 "$patchdir"); do
      patch -p1 -i "$patchdir/$patch"
    done
    popd

    ./autogen.sh
  '';

  makeFlags = [
    "PLUGIN_DIR_PURPLE=/lib/pidgin/"
    "DATA_ROOT_DIR_PURPLE=/share"
  ];

  installPhase = ''
    mkdir -p $out/lib/purple-2
    cp pidgin/libpurple/protocols/facebook/.libs/*.so $out/lib/purple-2/
  '';

  nativeBuildInputs = [ autoreconfHook ];
  buildInputs = [pidgin glib json_glib mercurial];

  meta = with stdenv.lib; {
    inherit (src.meta) homepage;
    description = "Facebook protocol plugin for libpurple";
    license = licenses.gpl2;
    platforms = platforms.linux;
    maintainers = with maintainers; [ davorb ];
  };
}
