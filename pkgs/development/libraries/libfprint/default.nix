{ lib, stdenv
, fetchFromGitLab
, pkg-config
, meson
, python3
, ninja
, gusb
, pixman
, glib
, nss
, gobject-introspection
, coreutils
, gtk-doc
, docbook-xsl-nons
, docbook_xml_dtd_43
, cmake
, cairo
, libgudev
}:

stdenv.mkDerivation rec {
  pname = "libfprint";
  version = "1.92.0";
  outputs = [ "out" "devdoc" ];

  src = fetchFromGitLab {
    domain = "gitlab.freedesktop.org";
    owner = "libfprint";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-ZiH+7TKQwWiWlV4dxuxQERKPgSkjA88MNV735G3zSKY=";
  };

  nativeBuildInputs = [
    pkg-config
    meson
    ninja
    gtk-doc
    docbook-xsl-nons
    docbook_xml_dtd_43
    gobject-introspection
    cmake
  ];

  buildInputs = [
    gusb
    pixman
    glib
    nss
    cairo
    libgudev
  ];

  checkInputs = [
    python3
  ];

  mesonFlags = [
    "-Dudev_rules_dir=${placeholder "out"}/lib/udev/rules.d"
    "-Dudev_hwdb_dir=${placeholder "out"}/lib/udev/hwdb.d"
    # Include virtual drivers for fprintd tests
    "-Ddrivers=all"
  ];

  doCheck = true;

  postPatch = ''
    patchShebangs \
      tests/test-runner.sh \
      tests/unittest_inspector.py \
      tests/virtual-image.py \
      tests/umockdev-test.py \
      tests/test-generated-hwdb.sh
  '';

  meta = with lib; {
    homepage = "https://fprint.freedesktop.org/";
    description = "A library designed to make it easy to add support for consumer fingerprint readers";
    license = licenses.lgpl21Only;
    platforms = platforms.linux;
    maintainers = with maintainers; [ abbradar ];
  };
}
