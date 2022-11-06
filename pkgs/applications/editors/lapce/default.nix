{ lib
, stdenv
, fetchFromGitHub
, rustPlatform
, cmake
, pkg-config
, perl
, fontconfig
, copyDesktopItems
, makeDesktopItem
, glib
, gtk3
, openssl
, libobjc
, Security
, CoreServices
, ApplicationServices
, Carbon
, AppKit
, wrapGAppsHook
, gobject-introspection
}:

rustPlatform.buildRustPackage rec {
  pname = "lapce";
  version = "0.2.2";

  src = fetchFromGitHub {
    owner = "lapce";
    repo = pname;
    rev = "3da96232ec16a75c3deeec734d16cc08d02ffe8b";
    sha256 = "sha256-vyH0wJFNipiXKEdFGOelyD9ZhtR6psqZ20W0NCwcvS4=";
  };

  cargoSha256 = "sha256-nMg8kVelIf6zKgGLmeJ6LHL8dppqUVYAl1Vevg33TAE=";

  nativeBuildInputs = [
    cmake
    pkg-config
    perl
    copyDesktopItems
    wrapGAppsHook # FIX: No GSettings schemas are installed on the system
    gobject-introspection
  ];

  # Get openssl-sys to use pkg-config
  OPENSSL_NO_VENDOR = 1;

  buildInputs = [
    glib
    gtk3
    openssl
  ] ++ lib.optionals stdenv.isLinux [
    fontconfig
  ] ++ lib.optionals stdenv.isDarwin [
    libobjc
    Security
    CoreServices
    ApplicationServices
    Carbon
    AppKit
  ];

  postInstall = ''
    install -Dm0644 $src/extra/images/logo.svg $out/share/icons/hicolor/scalable/apps/lapce.svg
  '';

  desktopItems = [ (makeDesktopItem {
    name = "lapce";
    exec = "lapce %F";
    icon = "lapce";
    desktopName = "Lapce";
    comment = meta.description;
    genericName = "Code Editor";
    categories = [ "Development" "Utility" "TextEditor" ];
  }) ];

  meta = with lib; {
    description = "Lightning-fast and Powerful Code Editor written in Rust";
    homepage = "https://github.com/lapce/lapce";
    license = with licenses; [ asl20 ];
    maintainers = with maintainers; [ elliot ];
  };
}
