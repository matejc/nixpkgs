{ stdenv, fetchurl }:

assert stdenv.system == "x86_64-linux";

stdenv.mkDerivation rec {
  name = "newrelic-sysmond-2.0.3.113";

  src = fetchurl {
    url = "http://download.newrelic.com/server_monitor/release/newrelic-sysmond-2.0.3.113-linux.tar.gz";

    sha256 = "0akjj1j3cq3lp9x0zan0c34jmvp3hg49y2rj7z0vmxvzhngzi9dq";
  };

  installPhase = ''
    mkdir -p $out/bin
    install -v -m755 daemon/nrsysmond.x64 $out/bin/nrsysmond
    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      $out/bin/nrsysmond
  '';

  meta = {
    homepage = http://newrelic.com/;

    description = "System-wide monitoring for newrelic";

    license = stdenv.lib.licenses.unfree;

    maintainers = [ stdenv.lib.maintainers.shlevy ];
  };
}
