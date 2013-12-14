{ stdenv, fetchgit, autoconf, automake, libtool, glib, gtk3, dbus, pkgconfig, file, intltool, connman }:

stdenv.mkDerivation {
  name = "connmanui-b838e640eddb83d296fb6d146ce756066d37c43b";
  src = fetchgit {
    url = "git://github.com/tbursztyka/connman-ui.git";
    rev = "b838e640eddb83d296fb6d146ce756066d37c43b";
    sha256 = "1lizgmqpk2wy95sh5b2rffnk5aga1mqmsxrli76yrf1fphccak8c";
  };

  buildInputs = [ autoconf automake libtool glib gtk3 dbus pkgconfig file intltool connman ];

  preConfigure = ''
    set -e
    ./autogen.sh
    sed -i "s/\/usr\/bin\/file/file/g" ./configure
  '';

  configureScript = "./configure";

  meta = {
    description = "A full-featured GTK based trayicon UI for ConnMan";
    homepage = "https://github.com/tbursztyka/connman-ui";
  };
}
