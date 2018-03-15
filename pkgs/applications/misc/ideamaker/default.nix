{ stdenv, fetchurl, mesa_glu, glib, makeWrapper, xorg, qt5, fontconfig
, freetype, libxkbcommon, dbus }:
with stdenv.lib;

let
  ideaMakerLibs = makeLibraryPath [
    mesa_glu stdenv.cc.cc glib xorg.libxcb xorg.libXi xorg.libX11
    xorg.libSM xorg.libICE fontconfig freetype xorg.libXrender dbus qt5.qtsvg
  ];
in
stdenv.mkDerivation rec {
  name = "ideaMaker-${version}";
  version = "3.1.0";

  src = fetchurl {
    url = "https://s3.amazonaws.com/ideamaker/linux/ideaMaker_${version}-ubuntu_amd64.deb";
    sha256 = "0n918zn2r43sla9pnlmc8qccz3kp6s1ph3zfafc9p604442j61yh";
    name = "${name}.deb";
  };

  phases = [ "installPhase" "fixupPhase" ];

  buildInputs = [ makeWrapper ];

  installPhase = ''
    mkdir -p $out
    ar p $src data.tar.xz | tar -C $out -xJ

    mkdir -p $out/{lib,bin}
    ln -s $out/lib/ideamaker $out/bin/ideamaker

    mv $out/usr/lib/x86_64-linux-gnu/ideamaker/* $out/lib/
    mv $out/usr/share $out/share

    rmdir $out/usr/lib/x86_64-linux-gnu/ideamaker
    rmdir $out/usr/lib/x86_64-linux-gnu

    substituteInPlace $out/share/applications/ideamaker.desktop \
      --replace "Exec=/usr/bin/ideamaker" "Exec=$out/bin/ideamaker" \
      --replace "Icon=/usr/share/ideamaker/icons/ideamaker-icon.png" "Icon=$out/share/ideamaker/icons/ideamaker-icon.png"
  '';

  postFixup = ''
    chmod +x $out/lib/*.so*
    chmod +x $out/lib/*/*.so*

    for file in $(find $out -type f \( -perm /0111 -o -name \*.so\* \) ); do
      patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" "$file" || true
      patchelf --set-rpath ${ideaMakerLibs}:$out/lib $file || true
    done
  '';

  meta = {
    description = "Native-compiled, multi-threaded, 64-bit, highly efficient slicing engine";
    homepage = https://www.raise3d.com/pages/ideamaker;
    license = licenses.unfree;
    maintainers = [ maintainers.matejc ];
    platforms = [ "x86_64-linux" ];
  };
}
