{ appimageTools, fetchurl }:

let
  name = "unityhub";

  src = fetchurl {
    url = "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage";
    sha256 = "1ckgva0bywi4wg480qfqgm69nic0v99hsgdk47mfzc26sqzzwkaz";
  };

  appimageContents = appimageTools.extractType2 {
    inherit name src;
  };
in
  appimageTools.wrapType2 {
    inherit name src;

    extraPkgs = pkgs: with pkgs; [ libsecret ];

    extraInstallCommands = ''
      install -m 444 -D ${appimageContents}/unityhub.desktop $out/share/applications/unityhub.desktop
      install -m 444 -D ${appimageContents}/usr/share/icons/hicolor/48x48/apps/unityhub.png \
        $out/share/icons/hicolor/48x48/apps/unityhub.png
      substituteInPlace $out/share/applications/unityhub.desktop \
        --replace 'Exec=AppRun' 'Exec=${name}'
    '';
  }
