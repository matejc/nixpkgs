{ fetchFromGitHub, buildGoModule, lib, installShellFiles, libgit2, pkg-config }:
buildGoModule rec {
  pname = "turbogit";
  version = "20211018";

  src = fetchFromGitHub {
    owner = "b4nst";
    repo = pname;
    rev = "90cc7e5a11098d333eedb97d817e7d9a86974e79";
    sha256 = "sha256-R5bkPNvm/gCQAJQfgR8tz/Xd59cdkZBoXQr3LAtL5VY=";
  };

  vendorSha256 = "sha256-cYTBJJJt+/OD/8THIdXTBgJxlCk+Mz0kr5PjuOh4PmY=";

  subPackages = [ "." ];

  buildInputs = [ libgit2 ];
  nativeBuildInputs = [ installShellFiles pkg-config ];
  postInstall = ''
    # Move turbogit binary to tug
    ln -s $out/bin/turbogit $out/bin/tug

    # Generate completion files
    mkdir -p share/completions
    $out/bin/tug completion bash > share/completions/tug.bash
    $out/bin/tug completion fish > share/completions/tug.fish
    $out/bin/tug completion zsh > share/completions/tug.zsh

    installShellCompletion share/completions/tug.{bash,fish,zsh}
  '';

  meta = with lib; {
    description = "Keep your git workflow clean without headache.";
    longDescription = ''
      turbogit (tug) is a cli tool built to help you deal with your day-to-day git work.
      turbogit enforces convention (e.g. The Conventional Commits) but tries to keep things simple and invisible for you.
      turbogit is your friend.
    '';
    homepage = "https://b4nst.github.io/turbogit";
    license = licenses.mit;
    platforms = platforms.linux ++ platforms.darwin;
    maintainers = [ maintainers.yusdacra ];
  };
}
