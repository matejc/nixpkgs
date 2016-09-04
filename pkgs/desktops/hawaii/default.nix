{ stdenv, callPackage, qt5, fetchgit, cmake, makeQtWrapper, pkgconfig, gnome3
, kde5, xorg, wayland, xcb-util-cursor, libinput, libxkbcommon
, wayland-protocols, pam, alsaLib, mobile_broadband_provider_info
, libpulseaudio, glib, lib }:
let
  hawaii_paths = [

  ];

  buildHawaii =
    { name, src ? null, tag ? null, rev ? null, url ? null, sha256 ? null
      , buildInputs ? [], preConfigure ? "", preInstall ? "", postInstall ? ""
      , cmakeFlags ? [] }:
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
      # postInstall = ''
      #   for executable in $out/bin/*
      #   do
      #     wrapQtProgram "$executable"
      #   done
      # '';
      buildInputs = [ cmake ] ++ hawaii_paths ++ buildInputs;
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
    tag = "v0.7.90";
    sha256 = "07ck95ryfs7aldgh8qcpf508qwi2wab08rwqq64drld7f43sak5d";
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
    tag = "v0.7.90";
    sha256 = "0v17ccjfagikkiicicy2rrm6m41lis84f7681am7r3ysj70x2zmg";
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
    tag = "v0.7.91";
    sha256 = "1sv94i69prjyz70p6ch45vnm999y8mm968yv74qwqxykqqpf55a0";
    buildInputs = [ qt5.ecm qt5.qtdeclarative pkgconfig xorg.libpthreadstubs
      xorg.libXdmcp wayland xcb-util-cursor xorg.libXcursor libinput
      libxkbcommon.dev wayland-protocols ];
  };
  hawaii-shell = buildHawaii {
    name = "hawaii-shell";
    tag = "v0.7.1";
    sha256 = "0jd914iw9dh1c00j3ccwv2x11gwhbds3cb05wqyv0402dksmkbgp";
    buildInputs = [ qt5.ecm qt5.qtdeclarative qt5.qtwayland qt5.solid
      qt5.networkmanager-qt greenisland wayland libhawaii libqtxdg
      xorg.libpthreadstubs xorg.libXdmcp pam alsaLib qt5.modemmanager-qt
      mobile_broadband_provider_info libpulseaudio pkgconfig ];
    cmakeFlags = [ "-DENABLE_SYSTEMD=No" ];
  };
  hawaii-system-preferences = buildHawaii {
    name = "hawaii-system-preferences";
    /*tag = "v0.7.90";*/
    rev = "4cc8e8b6eca9b88465999cb99b182fceb49a1a3d";
    sha256 = "079x2w9pag39k3iyxh9lzxg9lhkb9b31fjh00l37r95sz7s3fjmp";
    buildInputs = [ qt5.ecm libhawaii qt5.qtdeclarative qt5.polkit-qt
      greenisland wayland ];
  };
  hawaii-workspace = buildHawaii {
    name = "hawaii-workspace";
    tag = "v0.7.0";
    sha256 = "1hmnx5hjwnah7wpgdkyf8jrzsafn8di0sf2c5r2ivsj85gwwa5k9";
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
    tag = "v0.7.0";
    buildInputs = [ qt5.ecm ];
    sha256 = "1daw0zbyfqwi9bxkv405c0c9bn41xnkq58agjsn52rb1fs104qrm";
  };
  hawaii-widget-styles = buildHawaii {
    name = "hawaii-widget-styles";
    tag = "v0.7.0";
    buildInputs = [ qt5.ecm qt5.qtdeclarative ];
    sha256 = "0zi54r42pflbk31d2hi6r85kx8mrz25mz0ccm8v3idgcgq35zwjs";
  };
  hawaii-icon-theme = buildHawaii {
    name = "hawaii-icon-theme";
    tag = "v0.7.0";
    buildInputs = [ ];
    sha256 = "0y2qbld25xzfclh2p2xi9k4dy4a5lbqnaas8mzsms4rxbnsxz956";
  };
  hawaii-plymouth-theme = buildHawaii {
    name = "hawaii-plymouth-theme";
    tag = "v0.2.2";
    buildInputs = [ ];
    sha256 = "10jvs8cw23hbmfywn1kkai4kdcwvvwk6bga9089f25z9xgz8k383";
  };
}
