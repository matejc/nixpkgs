{ stdenv, makeWrapper, fetchurl, lib, zlib, pkgs }:
let
  pks = with pkgs; [
    desktop-file-utils
    xorg.libXcomposite
    xorg.libXtst
    xorg.libXrandr
    xorg.libXext
    xorg.libX11
    xorg.libXfixes
    libGL

    gst_all_1.gstreamer
    gst_all_1.gst-plugins-ugly
    libdrm
    xorg.xkeyboardconfig
    xorg.libpciaccess

    glib
    gtk2
    bzip2
    zlib
    gdk_pixbuf

    xorg.libXinerama
    xorg.libXdamage
    xorg.libXcursor
    xorg.libXrender
    xorg.libXScrnSaver
    xorg.libXxf86vm
    xorg.libXi
    xorg.libSM
    xorg.libICE
    gnome2.GConf
    freetype
    (curl.override { gnutlsSupport = true; sslSupport = false; })
    nspr
    nss
    fontconfig
    cairo
    pango
    expat
    dbus
    cups
    libcap
    SDL2
    libusb1
    udev
    dbus-glib
    libav
    atk
    libudev0-shim
    networkmanager098

    xorg.libXt
    xorg.libXmu
    xorg.libxcb
    libGLU
    libuuid
    libogg
    libvorbis
    SDL
    SDL2_image
    glew110
    openssl
    libidn
    tbb
    wayland
    mesa_noglu
    libxkbcommon

    flac
    freeglut
    libjpeg
    libpng12
    libsamplerate
    libmikmod
    libtheora
    libtiff
    pixman
    speex
    SDL_image
    SDL_ttf
    SDL_mixer
    SDL2_ttf
    SDL2_mixer
    gstreamer
    gst-plugins-base
    libappindicator-gtk2
    libcaca
    libcanberra
    libgcrypt
    libvpx
    librsvg
    xorg.libXft
    libvdpau
    alsaLib
    stdenv.cc.cc
  ];
in
stdenv.mkDerivation rec {
  name = "uhk-agent-${version}";
  version = "1.2.12";

  src = fetchurl {
    url = "https://github.com/UltimateHackingKeyboard/agent/releases/download/v${version}/UHK.Agent-${version}-linux-x86_64.AppImage";
    sha256 = "1gr3q37ldixcqbwpxchhldlfjf7wcygxvnv6ff9nl7l8gxm732l6";
  };

  buildInputs = [ makeWrapper ];

  unpackPhase = ''
    cp $src uhk.AppImage
    chmod +xw uhk.AppImage
    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      --set-rpath "${lib.makeLibraryPath [ zlib ]}" \
      uhk.AppImage
    ./uhk.AppImage --appimage-extract
  '';

  installPhase = ''
    mkdir -p $out/{bin,libexec/uhk-agent}
    cp -r ./squashfs-root/* $out/libexec/uhk-agent/

    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      $out/libexec/uhk-agent/uhk-agent

    makeWrapper $out/libexec/uhk-agent/uhk-agent $out/bin/uhk-agent \
      --set LD_LIBRARY_PATH "$out/libexec/uhk-agent:${lib.makeLibraryPath pks}"
  '';
}
