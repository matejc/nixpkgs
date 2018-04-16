{ stdenv, fetchFromGitHub, eigen }:

stdenv.mkDerivation rec {
  name = "vcg-${version}";
  version = "20180411";

  src = fetchFromGitHub {
    owner = "cnr-isti-vclab";
    repo = "vcglib";
    rev = "ffc93b5169fda9c2fda760376ec572627f393157";
    sha256 = "182j544zv2ww135zx4l9dc9y8hfd9hplnbv3i9xq7xclxfgx22vd";
  };

  propagatedBuildInputs = [ eigen ];

  patches = [ ./remove-header.patch ];

  patchFlags = "--ignore-whitespace";

  installPhase = ''
    mkdir -p $out/include
    cp -r vcg wrap $out/include
    find $out -name \*.h -exec sed -i 's,<eigenlib/,<eigen3/,g' {} \;
  '';

  meta = with stdenv.lib; {
    homepage = http://vcg.isti.cnr.it/vcglib/install.html;
    description = "C++ library for manipulation, processing and displaying with OpenGL of triangle and tetrahedral meshes";
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = with maintainers; [ matejc ];
  };
}
