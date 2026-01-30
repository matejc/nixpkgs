{
  lib,
  fetchFromGitHub,
  rustPlatform,
  pkg-config,
  dbus,
}:

rustPlatform.buildRustPackage rec {
  version = "20260129";
  pname = "kdotool";

  src = fetchFromGitHub {
    owner = "jinliu";
    repo = "kdotool";
    rev = "049e3f5620ad8c5484241d7d06d742bc17d423ed";
    hash = "sha256-8pKPVOj0fMwzzuNehG+vbDxKn+wfpWoiYabl5wkcQtc=";
  };

  cargoHash = "sha256-CZr/aPAPFjeJdlF8wvf1c16bBGhzGhVW3WnZJ8TC68A=";

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ dbus ];

  meta = {
    description = "xdotool clone for KDE Wayland";
    homepage = "https://github.com/jinliu/kdotool";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ kotatsuyaki ];
  };
}
