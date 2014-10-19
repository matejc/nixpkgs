{ stdenv, buildPythonPackage, fetchgit, callPackage, fifengine, fifechan, python
, intltool, makeWrapper, pythonPackages, buildEnv }:
let
  version = "2014.1";
  deps = buildEnv {
    name = "uh-deps";
    paths = with pythonPackages; [ pyyaml sqlite3 pillow ];
    pathsToLink = [ "/lib/${python.libPrefix}/site-packages" ];
  };
in
buildPythonPackage {
  name = "unknownhorizons-${version}";

  src = fetchgit {
    url = "git://github.com/unknown-horizons/unknown-horizons";
    # rev = "refs/tags/${version}";
    rev = "5ff63494f11581ed4e1ce047dbb537352dbbec00";
    sha256 = "0dnqn75p0zcmjk40m85x2g2h3b1im7mbmzh59dlcnl2cd1dha41p";
  };

  buildInputs = [ fifengine fifechan python intltool makeWrapper ];

  preBuild = ''
    substituteInPlace horizons/util/atlasloadingthread.py \
      --replace "os.path.dirname(horizons.__file__)" "'$out/lib/${python.libPrefix}/site-packages/horizons'"

    substituteInPlace horizons/engine/generate_atlases.py \
      --replace "'content' + os.sep + 'atlas.sql'" "PATHS.ATLAS_DB_PATH" \
      --replace "'content' + os.sep + 'tilesets.json'" "PATHS.TILE_SETS_JSON_FILE" \
      --replace "'content' + os.sep + 'actionsets.json'" "PATHS.ACTION_SETS_JSON_FILE" \
      --replace '"""Return true if and only if the image was added."""' "print path" \
      --replace "im.save(out_file, 'png')" "im.save(out_file, 'png'); print self.path"
  '';

  postInstall = ''
    cp ./run_uh.py $out/lib/${python.libPrefix}/site-packages/horizons/engine/run_uh.py
  '';

  fixupPhase = ''
    substituteInPlace $out/lib/${python.libPrefix}/site-packages/horizons/engine/run_uh.py \
      --replace "#!/usr/bin/env python2" "#!${python}/bin/python2" \
      --replace "options = []" "options = []; options.append((lambda: __import__('os').environ['UH_USER_DIR'])()+'/share/unknown-horizons')"

    rm $out/bin/unknown-horizons

    makeWrapper $out/lib/${python.libPrefix}/site-packages/horizons/engine/run_uh.py $out/bin/unknown-horizons \
      --run 'mkdir -p $HOME/.unknown-horizons/share' \
      --run "cp -rn $out/share \$HOME/.unknown-horizons" \
      --run 'chmod -R u+w $HOME/.unknown-horizons' \
      --add-flags "--fife-path=${fifengine}/lib/${python.libPrefix}/site-packages/fife" \
      --set UH_USER_DIR '$HOME/.unknown-horizons' \
      --set PYTHONPATH "$out/lib/${python.libPrefix}/site-packages:${deps}/lib/${python.libPrefix}/site-packages"
  '';

  meta = {
    description = "Unknown Horizons is a 2D realtime strategy simulation with an emphasis on economy and city building";
    license = stdenv.lib.licenses.gpl2Plus;
    homepage = "http://www.unknown-horizons.org";
    maintainers = [ stdenv.lib.maintainers.matejc ];
    platforms = stdenv.lib.platforms.linux;
  };
}
