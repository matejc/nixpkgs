{ lib, stdenv, fetchurl, makeWrapper, gcc, libGL, pulseaudio, glib, zlib, dbus
, nss, nspr, expat, xorg, freetype, fontconfig, alsaLib, udev }:
let
  libPath = lib.makeLibraryPath [
    gcc.cc libGL pulseaudio glib zlib dbus nss nspr expat xorg.libX11
    xorg.libxcb xorg.libXcomposite xorg.libXcursor xorg.libXdamage xorg.libXext
    xorg.libXfixes xorg.libXi xorg.libXrender xorg.libXtst freetype fontconfig
    xorg.libXrandr alsaLib udev
  ];
in
stdenv.mkDerivation rec {
  name = "gonvim-${version}";
  version = "0.3.5";

  src = fetchurl {
    url = "https://github.com/akiyosi/gonvim/releases/download/v${version}/Gonvim-${version}-linux.tar.gz";
    sha256 = "0hrh3vlfzn1a4hk5xr6crc8i9pd0mm1qbkcc9w1fb0p1m0nlk8h5";
  };

  buildInputs = [ makeWrapper ];

  installPhase = ''
    mkdir -p $out/{bin,share/gonvim/resources}
    cp -rv . $out/share/gonvim/

    find $out/share -type f -perm -0100 -exec patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" --set-rpath "${libPath}" '{}' \;

    makeWrapper $out/share/gonvim/gonvim $out/bin/gonvim \
      --set LD_LIBRARY_PATH "$out/share/gonvim/lib:/run/opengl-driver/lib:/run/opengl-driver-32/lib:${libPath}" \
      --set QT_PLUGIN_PATH "$out/share/gonvim/plugins" \
      --set QML_IMPORT_PATH "$out/share/gonvim/qml" \
      --set QML2_IMPORT_PATH "$out/share/gonvim/qml" \
      --set QTWEBENGINEPROCESS_PATH "$out/share/gonvim/QtWebEngineProcess"
  '';

  # TODO: add metadata https://nixos.org/nixpkgs/manual/#sec-standard-meta-attributes
  meta = {
  };
}
