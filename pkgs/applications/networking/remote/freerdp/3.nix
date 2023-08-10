{ stdenv
, lib
, fetchFromGitHub
, cmake
, pkg-config
, alsa-lib
, ffmpeg
, glib
, openssl
, pcre
, zlib
, libX11
, libXcursor
, libXdamage
, libXext
, libXi
, libXinerama
, libXrandr
, libXrender
, libXv
, libXtst
, libxkbcommon
, libxkbfile
, wayland
, gstreamer
, gst-plugins-base
, gst-plugins-good
, libunwind
, orc
, libxslt
, cairo
, libusb1
, libpulseaudio
, cups
, pcsclite
, systemd
, libjpeg_turbo
, buildServer ? true
, nocaps ? false
, AudioToolbox
, AVFoundation
, Carbon
, Cocoa
, CoreMedia
, krb5
, icu
, cjson
, fuse3
, SDL2
, pkcs11helper
, SDL2_ttf
, qt5
, openh264
, webkitgtk
, glib-networking
}:

let
  cmFlag = flag: if flag then "ON" else "OFF";
  disabledTests = [
    # this one is probably due to our sandbox
    {
      dir = "libfreerdp/core/test";
      file = "TestConnect.c";
    }
  ] ++ lib.optionals stdenv.isDarwin [
    {
      dir = "winpr/libwinpr/sysinfo/test";
      file = "TestGetComputerName.c";
    }
  ];

in
stdenv.mkDerivation rec {
  pname = "freerdp";
  version = "dev";

  src = fetchFromGitHub {
    owner = "FreeRDP";
    repo = "FreeRDP";
    rev = "5be5553e0da72178a4b94cc1ffbdace9ceb153e5";
    sha256 = "sha256-nm0u91C5t88k3C6lo27FqpHK1M434yB8JWlcLVg7YOE=";
  };

  postPatch = ''
    export HOME=$TMP

    # skip NIB file generation on darwin
    sed -z 's/NIB file generation.*//' -i client/Mac{,/cli}/CMakeLists.txt

    # failing test(s)
    ${lib.concatMapStringsSep "\n" (e: ''
      substituteInPlace ${e.dir}/CMakeLists.txt \
        --replace ${e.file} ""
      rm ${e.dir}/${e.file}
    '') disabledTests}

    substituteInPlace "libfreerdp/freerdp.pc.in" \
      --replace "Requires:" "Requires: @WINPR_PKG_CONFIG_FILENAME@"
  '' + lib.optionalString (pcsclite != null) ''
    substituteInPlace "winpr/libwinpr/smartcard/smartcard_pcsc.c" \
      --replace "libpcsclite.so" "${lib.getLib pcsclite}/lib/libpcsclite.so"
  '' + lib.optionalString nocaps ''
    substituteInPlace "libfreerdp/locale/keyboard_xkbfile.c" \
      --replace "RDP_SCANCODE_CAPSLOCK" "RDP_SCANCODE_LCONTROL"
  '';

  buildInputs = [
    cairo
    cups
    ffmpeg
    glib
    gst-plugins-base
    gst-plugins-good
    gstreamer
    libX11
    libXcursor
    libXdamage
    libXext
    libXi
    libXinerama
    libXrandr
    libXrender
    libXtst
    libXv
    libjpeg_turbo
    libpulseaudio
    libunwind
    libusb1
    libxkbcommon
    libxkbfile
    libxslt
    openssl
    orc
    pcre
    pcsclite
    zlib
    krb5
    icu
    cjson
    fuse3
    SDL2
    pkcs11helper
    SDL2_ttf
    qt5.qtbase
    qt5.qtwebengine
    openh264
    webkitgtk
    glib-networking
  ] ++ lib.optionals stdenv.isLinux [
    alsa-lib
    systemd
    wayland
  ] ++ lib.optionals stdenv.isDarwin [
    AudioToolbox
    AVFoundation
    Carbon
    Cocoa
    CoreMedia
  ];

  nativeBuildInputs = [ cmake pkg-config qt5.wrapQtAppsHook ];

  doCheck = true;

  cmakeFlags = [ "-DCMAKE_INSTALL_LIBDIR=lib" ]
    ++ lib.mapAttrsToList (k: v: "-D${k}=${if v then "ON" else "OFF"}") {
    BUILD_TESTING = doCheck;
    WITH_CUNIT = doCheck;
    WITH_CUPS = (cups != null);
    WITH_OSS = false;
    #WITH_PCSC = (pcsclite != null);
    WITH_PCSC = false;
    #WITH_PULSE = (libpulseaudio != null);
    WITH_PULSE = false;
    WITH_SERVER = buildServer;
    WITH_SSE2 = stdenv.isx86_64;
    #WITH_VAAPI = true;
    WITH_JPEG = (libjpeg_turbo != null);
    WITH_CAIRO = (cairo != null);
    WITH_X11 = true;
    WITH_SPNEGO = true;
    WITH_KRB5 = false;
    WITH_MANPAGES = false;
    WITH_CJSON = true;
    WITH_WAYLAND = false;
    WITH_WEBKIT = true;
    WITH_WEBVIEW_QT = true;
    WITH_SDL2 = true;
    WITH_PCSC_WINPR = true;
    WITH_OPENSSL = true;
    #WITH_MBEDTLS = true;
    #WITH_DEBUG_NEGO = true;
    #WITH_DEBUG_ALL = true;
    WITH_OPENH264 = true;
    WITH_FFMPEG = true;
    WITH_DSP_FFMPEG = true;
  };

  NIX_CFLAGS_COMPILE = [ "-DCMAKE_BUILD_TYPE=Debug" "-O0" ] ++ (lib.optionals stdenv.isDarwin [
    "-DTARGET_OS_IPHONE=0"
    "-DTARGET_OS_WATCH=0"
    "-include AudioToolbox/AudioToolbox.h"
  ]);

  NIX_LDFLAGS = lib.optionals stdenv.isDarwin [
    "-framework AudioToolbox"
  ];

  postInstall = ''
    for bin in $out/bin/*
    do
      wrapProgram $bin --prefix GIO_MODULE_DIR ":" ${glib-networking}/lib/gio/modules/
    done
  '';

  separateDebugInfo = true;

  meta = with lib; {
    description = "A Remote Desktop Protocol Client";
    longDescription = ''
      FreeRDP is a client-side implementation of the Remote Desktop Protocol (RDP)
      following the Microsoft Open Specifications.
    '';
    homepage = "https://www.freerdp.com/";
    license = licenses.asl20;
    maintainers = with maintainers; [ peterhoeg lheckemann ];
    platforms = platforms.unix;
  };
}
