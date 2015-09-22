{ stdenv, fetchurl }:

assert (stdenv.system == "x86_64-linux") || (stdenv.system == "i686-linux");

stdenv.mkDerivation rec {
  name = "newrelic-sysmond-2.1.0.124";

  src = fetchurl {
    url = "http://download.newrelic.com/server_monitor/release/${name}-linux.tar.gz";
    sha256 = "16qxannnx42sfa2132kmwpr9w1nzx8ij2dw2izkpf3z2av8l4bh5";
  };

  installPhase = ''
    mkdir -p $out/bin
    install -v -m755 scripts/nrsysmond-config $out/bin/nrsysmond-config
    install -v -m755 daemon/nrsysmond.${if stdenv.system == "x86_64-linux" then "x64" else "x86"} $out/bin/nrsysmond
    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      $out/bin/nrsysmond

    # example config
    mkdir -p $out/etc
    install -v nrsysmond.cfg $out/etc/nrsysmond.cfg
  '';

  meta = {
    homepage = http://newrelic.com/;

    description = "System-wide monitoring for newrelic";

    license = stdenv.lib.licenses.unfree;
  };
}
