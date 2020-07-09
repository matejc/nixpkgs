{ stdenv, fetchFromGitHub, meson, ninja, pkgconfig, pipewire, wayland,
wayland-protocols, elogind, systemd }:

stdenv.mkDerivation rec {
  pname = "xdg-desktop-portal-wlr";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "emersion";
    repo = pname;
    rev = "v${version}";
    sha256 = "12k92h9dmn1fyn8nzxk69cyv0gnb7g9gj7a66mw5dcl5zqnl07nc";
  };

  nativeBuildInputs = [ pkgconfig ninja meson ];
  buildInputs = [ pipewire wayland wayland-protocols elogind systemd ];
}
