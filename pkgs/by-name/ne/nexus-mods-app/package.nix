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
    # commits were made after 0.4 release, move back to versioning after app version is >0.4
    # future is required, so that nxm hack works
    rev = "0f8d2e946a3a259d9148474488dd1b5522b6146a";
    fetchSubmodules = true;
    hash = "sha256-dT92vhLlHQa8hsNKYInT9Q/1FJiVU+bHV/kF3+71/jc=";
  };
in
buildDotnetModule rec {
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
    "--set APPIMAGE $out/bin/${meta.mainProgram}"  # a hack, to make associating with nxm links work on Linux
  ];

  runtimeDeps = [
    fontconfig
    libICE
    libSM
    libX11
  ];

  # Fixes NETSDK1152, and since we disabled flaky tests,
  # lets remove also problematic xunit files
  preBuild = ''
    find . -name xunit.runner.json -delete
  '';

  executables = [ meta.mainProgram ];

  passthru = {
    tests = {
      serve = runCommand "${pname}-test-serve" { } ''
        ${nexus-mods-app}/bin/${meta.mainProgram}
        touch $out
      '';
      help = runCommand "${pname}-test-help" { } ''
        ${nexus-mods-app}/bin/${meta.mainProgram} --help
        touch $out
      '';
      associate-nxm = runCommand "${pname}-test-associate-nxm" { } ''
        ${nexus-mods-app}/bin/${meta.mainProgram} associate-nxm
        touch $out
      '';
      list-tools = runCommand "${pname}-test-list-tools" { } ''
        ${nexus-mods-app}/bin/${meta.mainProgram} list-tools
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
