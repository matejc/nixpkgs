{ buildDotnetModule
, copyDesktopItems
, desktop-file-utils
, dotnetCorePackages
, fetchFromGitHub
, fontconfig
, lib
, libICE
, libSM
, libX11
, nexus-mods-app
, runCommand
}:
let
  pname = "nexus-mods-app";
  version = "0.4";
  src = fetchFromGitHub {
    owner = "Nexus-Mods";
    repo = "NexusMods.App";
    rev = "v${version}";
    fetchSubmodules = true;
    hash = "sha256-JKmRp7kSI7R0wkOvPVSChf8BNbMAPpnDHXr3h0plZGM=";
  };
in
buildDotnetModule {
  inherit pname src version;

  projectFile = "NexusMods.App.sln";

  nativeBuildInputs = [
    copyDesktopItems
  ];

  nugetDeps = ./deps.nix;

  dotnet-sdk = dotnetCorePackages.sdk_8_0;
  dotnet-runtime = dotnetCorePackages.runtime_8_0;

  makeWrapperArgs = [
    "--prefix PATH : ${lib.makeBinPath [desktop-file-utils]}"
  ];

  runtimeDeps = [
    fontconfig
    libICE
    libSM
    libX11
  ];

  executables = [
    nexus-mods-app.meta.mainProgram
  ];

  doCheck = true;

  dotnetTestFlags = [
    "--environment=USER=nobody --filter=Category!=Disabled&FlakeyTest!=True&RequiresNetworking!=True"
  ];

  passthru = {
    tests = {
      serve = runCommand "${pname}-test-serve" { } ''
        ${nexus-mods-app}/bin/${nexus-mods-app.meta.mainProgram}
        touch $out
      '';
      help = runCommand "${pname}-test-help" { } ''
        ${nexus-mods-app}/bin/${nexus-mods-app.meta.mainProgram} --help
        touch $out
      '';
      associate-nxm = runCommand "${pname}-test-associate-nxm" { } ''
        ${nexus-mods-app}/bin/${nexus-mods-app.meta.mainProgram} associate-nxm
        touch $out
      '';
      list-tools = runCommand "${pname}-test-list-tools" { } ''
        ${nexus-mods-app}/bin/${nexus-mods-app.meta.mainProgram} list-tools
        touch $out
      '';
    };
  };

  meta = with lib; {
    description = "Game mod installer, creator and manager";
    mainProgram = "NexusMods.App";
    homepage = "https://github.com/Nexus-Mods/NexusMods.App";
    changelog = "https://github.com/Nexus-Mods/NexusMods.App/releases/tag/${src.rev}";
    license = with licenses; [ gpl3 ];
    maintainers = with maintainers; [ l0b0 ];
    platforms = platforms.linux;
  };
}
