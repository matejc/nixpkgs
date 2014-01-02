{ stdenv, fetchgit, autoconf, automake, libtool, pkgconfig, openconnect, file,
  openvpn, vpnc, glib, dbus, iptables, gnutls, policykit, polkit,
  wpa_supplicant, readline6, pptp, ppp, tree }:

stdenv.mkDerivation {
  name = "connman-1.20";
  src = fetchgit {
    url = "git://git.kernel.org/pub/scm/network/connman/connman.git";
    rev = "8047f3d051b32d38ac0b1e78296b482368728ec6";
    sha256 = "0hb03rzrspgry8z43x8x76vlq1hdq2wggkk7wbidavnqhpmz7dxz";
  };

  buildInputs = [ autoconf automake libtool pkgconfig openconnect polkit
                  file openvpn vpnc glib dbus iptables gnutls policykit
                  wpa_supplicant readline6 pptp ppp tree ];

  preConfigure = ''
    export WPASUPPLICANT=${wpa_supplicant}/sbin/wpa_supplicant
    ./bootstrap
    sed -i "s/\/usr\/bin\/file/file/g" ./configure
    substituteInPlace configure --replace /usr/sbin/pptp ${pptp}/sbin/pptp
    substituteInPlace configure --replace /usr/sbin/pppd ${ppp}/sbin/pppd
  '';

  configureFlags = [
    "--sysconfdir=\${out}/etc"
    "--localstatedir=/var"
    "--with-dbusconfdir=\${out}/etc"
    "--with-dbusdatadir=\${out}/usr/share"
    "--disable-maintainer-mode"
    "--enable-debug"
    "--enable-openconnect=builtin"
    "--with-openconnect=${openconnect}/sbin/openconnect"
    "--enable-openvpn=builtin"
    "--with-openvpn=${openvpn}/sbin/openvpn"
    "--enable-vpnc=builtin"
    "--with-vpnc=${vpnc}/sbin/vpnc"
    "--enable-session-policy-local=builtin"
    "--enable-client"
    "--enable-bluetooth"
    "--enable-wifi"
    "--enable-polkit"
    "--enable-nmcompat"
    "--enable-tools"
    "--enable-datafiles"
    "--enable-pptp"
  ];

  postFixup = ''
    awk '/context\=\"default\"/ && !x {print "    <policy group=\"connman\">\n        <allow send_destination=\"net.connman\"/>\n        <allow send_interface=\"net.connman.Agent\"/>\n        <allow send_interface=\"net.connman.Counter\"/>\n        <allow send_interface=\"net.connman.Notification\"/>\n    </policy>"; x=1} 1' $out/etc/dbus-1/system.d/connman.conf > $out/etc/dbus-1/system.d/connman.conf.new
    mv $out/etc/dbus-1/system.d/connman.conf.new $out/etc/dbus-1/system.d/connman.conf
    cp ./client/connmanctl $out/sbin/connmanctl
    mkdir -p $out/lib/connman/plugins
    mkdir -p $out/lib/connman/plugins-vpn
    cp ./vpn/plugins/vpn_connman_vpnd-openconnect.o $out/lib/connman/plugins-vpn/openconnect.o
    cp ./vpn/plugins/vpn_connman_vpnd-vpn.o $out/lib/connman/plugins-vpn/vpn.o
    cp ./vpn/plugins/vpn_connman_vpnd-vpnc.o $out/lib/connman/plugins-vpn/vpnc.o
    cp ./vpn/plugins/vpn_connman_vpnd-openvpn.o $out/lib/connman/plugins-vpn/openvpn.o
    echo "################################"
    tree ./
    echo "################################"
    tree $out
    echo $out
    echo "################################"
  '';

  meta = {
    description = "The ConnMan project provides a daemon for managing internet connections";
    homepage = "https://connman.net/";
  };
}
