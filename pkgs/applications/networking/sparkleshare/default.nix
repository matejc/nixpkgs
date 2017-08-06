{ stdenv, fetchurl, which, libtool, automake, autoconf, pkgconfig, mono
, gtk-sharp-3_0, notify-sharp, file, webkit2gtk-sharp, makeWrapper, gvfs, glib
, gnome3 }:
stdenv.mkDerivation rec {
  name = "sparkleshare-${version}";
  version = "2.0-${versionSuffix}";
  versionSuffix = "beta-1";
  src = fetchurl {
    url = "https://github.com/hbons/SparkleShare/archive/${version}.tar.gz";
    sha256 = "0qg24by63l54lrg92xwia9h2638yizmillbrnll367k6vc7221n0";
  };
  buildInputs = [ which libtool automake autoconf pkgconfig mono gtk-sharp-3_0
    notify-sharp webkit2gtk-sharp makeWrapper ];
  preConfigure = ''
    ./autogen.sh
    substituteInPlace ./configure \
      --replace "/usr/bin/file" "${file}/bin/file"
  '';

  postConfigure = ''
    substituteInPlace ./SparkleShare/Linux/UserInterface.cs \
      --replace '(application as GLib.Application).Run ("org.sparkleshare.SparkleShare", new string [0]);' '(application as GLib.Application).Run (0, null);'
  '';

  postInstall = ''
    wrapProgram $out/bin/sparkleshare \
      --prefix PATH : ${mono}/bin:${gvfs}/bin \
      --prefix MONO_PATH : ${gtk-sharp-3_0}/lib/mono/gtk-sharp-3.0:${webkit2gtk-sharp}/lib/mono/webkit2-sharp \
      --prefix LD_LIBRARY_PATH : ${glib}/lib:${gnome3.gtk}/lib:${webkit2gtk-sharp}/lib:${gnome3.webkitgtk}/lib
  '';
}
