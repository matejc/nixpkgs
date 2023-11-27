{ buildDotnetModule
, dotnetCorePackages
, fetchFromGitHub
, lib
}:
buildDotnetModule rec {
  pname = "nexus-mods-app";
  version = "0.2.2";

  src = fetchFromGitHub {
    owner = "Nexus-Mods";
    repo = "NexusMods.App";
    rev = "846d943f140c48a895061f68b0d82f89546477a4";
    hash = "sha256-ZEroXmZi86ob+0PSgziNr4PFsSHQH7b7DZ3PIZ/IpHw=";
  };

  projectFile = "src/NexusMods.App/NexusMods.App.csproj";

  nugetDeps = ./deps.nix;

  dotnet-sdk = dotnetCorePackages.sdk_8_0;
  dotnet-runtime = dotnetCorePackages.runtime_8_0;

  meta = with lib; {
    description = "Game mod installer, creator and manager";
    homepage = "https://github.com/Nexus-Mods/NexusMods.App";
    changelog = "https://github.com/Nexus-Mods/NexusMods.App/releases/tag/${src.rev}";
    license = with licenses; [ gpl3 ];
    maintainers = with maintainers; [ l0b0 ];
  };
}
