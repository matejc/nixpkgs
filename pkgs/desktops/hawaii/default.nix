{ stdenv, callPackage, qt5, fetchgit, cmake, makeQtWrapper, pkgconfig, gnome3
, kde5, xorg, wayland, xcb-util-cursor, libinput, libxkbcommon
, wayland-protocols, pam, alsaLib, mobile_broadband_provider_info
, libpulseaudio, glib, lib, ecm, udev, libdrm, mesa }:
let
  hawaii_paths = [
    /*qt5.qtquickcontrols
    qt5.qtquickcontrols2
    qt5.qtquickcontrols.out
    qt5.qtquickcontrols2.out*/
  ];

  buildHawaii =
    { name, src ? null, tag ? null, rev ? null, url ? null, sha256 ? null
      , buildInputs ? [], preConfigure ? "", preInstall ? "", postInstall ? ""
      , cmakeFlags ? [], propagatedBuildInputs ? [] }:
    stdenv.mkDerivation ({
      inherit name;
      nativeBuildInputs = [
        makeQtWrapper
      ];
      cmakeFlags = [
        /*"-DCMAKE_BUILD_TYPE=Release"*/
        /*"-DCMAKE_INSTALL_PREFIX=$prefix"*/
      ] ++ cmakeFlags;
      preConfigure = ''
      '' + preConfigure;
      preInstall = preInstall;
      postInstall = ''
        for executable in $out/bin/*
        do
          wrapQtProgram "$executable"
        done
      '' + postInstall;
      buildInputs = [ cmake ] ++ hawaii_paths ++ buildInputs;
      propagatedBuildInputs = hawaii_paths ++ propagatedBuildInputs;
    } // (if src == null then {
      src = fetchgit {
        url = if url == null then "https://github.com/hawaii-desktop/${name}.git" else url;
        rev = if rev == null then "refs/tags/${tag}" else rev;
        sha256 = if sha256 == "" then "fff53d23734e42aedc1171f1755635388a94486cd24ac814083d8eb361619666" else sha256;
      };
    } else {
      inherit src;
    }) // (lib.optionalAttrs (postInstall != "") { inherit postInstall; }));


in rec {
  fluid = buildHawaii {
    name = "fluid";
    tag = "v0.8.0";
    sha256 = "19px3bi3qf2llry0rz6rpjjj432j7jkqpfm60m2kfv0qvka6sfmv";
    buildInputs = [ qt5.ecm qt5.qtdeclarative ];
  };
  qtconfiguration = buildHawaii {
    name = "qtconfiguration";
    tag = "v0.3.1";
    sha256 = "0jv0j9mb1my7vq4xadrdjwpbvmgm31d6r1md46a7bdaaxgjh89fc";
    buildInputs = [ qt5.qtbase pkgconfig gnome3.dconf qt5.qtdeclarative ];
  };
  libhawaii = buildHawaii {
    name = "libhawaii";
    tag = "v0.8.0";
    sha256 = "0vkg20vrkmq5zdlisb5hysaj9z1crlwhz4ag98v3myx21pswazzx";
    buildInputs = [ qt5.qtbase qt5.qtdeclarative qt5.ecm ];
  };
  libqtxdg = buildHawaii {
    name = "libqtxdg";
    url = https://github.com/lxde/libqtxdg;
    tag = "1.3.0";
    sha256 = "0by505fmrcsldi4wg1gwp10swqprv7z8dwf2s5g0k3630x488him";
    buildInputs = [ qt5.qtbase ];
    cmakeFlags = [ "-DBUILD_DEV_UTILS=Yes" ];
  };
  greenisland = buildHawaii {
    name = "greenisland";
    tag = "v0.8.1";
    sha256 = "10843vagiiikbib46nd8m1krx2iri44w3gh674pspxvbznk4kq75";
    buildInputs = [ qt5.ecm qt5.qtdeclarative pkgconfig xorg.libpthreadstubs
      xorg.libXdmcp wayland xcb-util-cursor xorg.libXcursor libinput
      libxkbcommon.dev wayland-protocols qt5.qtgraphicaleffects.out ecm udev libdrm mesa ];
    /*preConfigure = ''
      export -f substitute
      export -f substituteInPlace
      find . -iname "CMakeLists.txt" -exec sh -c "substituteInPlace {} --replace  '\''${PLUGIN_INSTALL_DIR}' $out/lib/qt5/plugins" \;
    '';*/
  };
  hawaii-shell = buildHawaii {
    name = "hawaii-shell";
    tag = "v0.8.0";
    sha256 = "0ck17m1dnm9xkg8wllmd34w3xb3pw3fnxfbcb3kcixigd1smy2n2";
    buildInputs = [ qt5.ecm qt5.qtdeclarative qt5.qtwayland qt5.solid
      qt5.networkmanager-qt greenisland wayland libhawaii libqtxdg
      xorg.libpthreadstubs xorg.libXdmcp pam alsaLib qt5.modemmanager-qt
      mobile_broadband_provider_info libpulseaudio pkgconfig fluid
      qt5.qtquickcontrols2 qt5.qtquickcontrols2.out ];
    cmakeFlags = [ "-DENABLE_SYSTEMD=No" ];
  };
  hawaii-system-preferences = buildHawaii {
    name = "hawaii-system-preferences";
    tag = "v0.8.0";
    /*rev = "4cc8e8b6eca9b88465999cb99b182fceb49a1a3d";*/
    sha256 = "16kb5ra3alsgdwpfxyqsjd7yvak1vjnmddrzmmvp8ccdf281bp5c";
    buildInputs = [ qt5.ecm libhawaii qt5.qtdeclarative qt5.polkit-qt
      greenisland wayland ];
  };
  hawaii-workspace = buildHawaii {
    name = "hawaii-workspace";
    tag = "v0.8.1";
    sha256 = "1avmrvhnm1nnfbkgb2gz1zpny4gd9ajwnnzw0m1jwvgavl39xcxs";
    buildInputs = [ qt5.ecm qt5.qtdeclarative libhawaii greenisland wayland
      qt5.polkit-qt ];
    cmakeFlags = [ "-DCMAKE_BUILD_TYPE=Debug" ];
    preInstall = ''
      substituteInPlace data/settings/cmake_install.cmake \
        --replace "${glib.out}/share/glib-2.0/schemas" "$out/share/glib-2.0/schemas"
    '';
  };
  hawaii-wallpapers = buildHawaii {
    name = "hawaii-wallpapers";
    tag = "v0.8.0";
    buildInputs = [ qt5.ecm ];
    sha256 = "0nv21v4bmrjj9wmzjxa353ynidbzwncbjkfj2nain1m0dqqbk8b2";
  };
  hawaii-widget-styles = buildHawaii {
    name = "hawaii-widget-styles";
    tag = "v0.8.0";
    buildInputs = [ qt5.ecm qt5.qtdeclarative ];
    sha256 = "08ma8z5dav5d3p8x3p4bg7kmb1l3rrjf9nl0j4ms6g0piq22wh19";
  };
  hawaii-icon-theme = buildHawaii {
    name = "hawaii-icon-theme";
    tag = "v0.8.0";
    buildInputs = [ ];
    sha256 = "1vzz8g3jpai4vp7n9hzb7ph8nmjbf7xmhxw2j1yhiq6ww0rx81pz";
  };
  hawaii-plymouth-theme = buildHawaii {
    name = "hawaii-plymouth-theme";
    tag = "v0.2.2";
    buildInputs = [ ];
    sha256 = "10jvs8cw23hbmfywn1kkai4kdcwvvwk6bga9089f25z9xgz8k383";
  };
}
