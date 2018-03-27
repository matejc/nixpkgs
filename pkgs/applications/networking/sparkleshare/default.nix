{ stdenv, fetchurl, which, libtool, automake, autoconf, pkgconfig, mono
, gtk-sharp-3_0, notify-sharp, file, webkit2gtk-sharp, makeWrapper, glib
, gnome3, dbus-sharp-glib-2_0, dbus-sharp-2_0 }:
stdenv.mkDerivation rec {
  name = "sparkleshare-${version}";
  version = "2.0.1";
  src = fetchurl {
    url = "https://github.com/hbons/SparkleShare/archive/${version}.tar.gz";
    sha256 = "1ckxxxm6q29wkvgpf0snygyxa91b45a3jcjifyr4nxv4ydbamq59";
  };
  buildInputs = [ which libtool automake autoconf pkgconfig mono gtk-sharp-3_0
    notify-sharp webkit2gtk-sharp makeWrapper dbus-sharp-glib-2_0 dbus-sharp-2_0 ];
  preConfigure = ''
    patchShebangs ./autogen.sh
    ./autogen.sh
    substituteInPlace ./configure \
      --replace "/usr/bin/file" "${file}/bin/file"
  '';

  postConfigure = ''
    substituteInPlace ./SparkleShare/Linux/UserInterface.cs \
      --replace '(application as GLib.Application).Run ("org.sparkleshare.SparkleShare", new string [0]);' '(application as GLib.Application).Run (0, null);'
    substituteInPlace ./SparkleShare/Linux/Controller.cs \
      --replace 'gvfs-set-attribute' 'gio' \
      --replace '"\"" + Configuration.DefaultConfiguration.FoldersPath + "\" "' '"set \"" + Configuration.DefaultConfiguration.FoldersPath + "\" "'
  '';

  postInstall = ''
    wrapProgram $out/bin/sparkleshare \
      --set TERM xterm \
      --prefix PATH : ${mono}/bin:${gnome3.glib.dev}/bin \
      --prefix MONO_PATH : ${gtk-sharp-3_0}/lib/mono/gtk-sharp-3.0:${webkit2gtk-sharp}/lib/mono/webkit2-sharp:${notify-sharp}/lib/mono/notify-sharp-3.0:${dbus-sharp-glib-2_0}/lib/mono/dbus-sharp-glib-2.0:${dbus-sharp-2_0}/lib/mono/dbus-sharp-2.0 \
      --prefix LD_LIBRARY_PATH : ${glib}/lib:${gnome3.gtk}/lib:${webkit2gtk-sharp}/lib:${gnome3.webkitgtk}/lib
  '';
}
