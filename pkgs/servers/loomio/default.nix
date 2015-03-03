{ stdenv, fetchgit, fetchurl, makeWrapper, bundlerEnv, bundler_HEAD
, ruby, rubygemsFun, openssl, sqlite, nodejs, dataDir ? "/var/lib/loomio"}:

with stdenv.lib;

let
  env = bundlerEnv {
    name = "loomio-gems";
    inherit ruby;
    gemset = ./gemset.nix;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
  };
  bundler = bundler_HEAD.override { inherit ruby; };
  database_yml = builtins.toFile "database.yml" ''
    production:
      adapter: postgresql
      database: loomio_db
      username: loomio
  '';
in
stdenv.mkDerivation rec {
  name = "loomio-${version}";
  version = "20150217";

  src = fetchgit {
    rev = "3033e2291223feafa1a8d0131b38a29597e547ea";
    url = "git://github.com/loomio/loomio";
    sha256 = "0as4vmf48r8frg25driq05s4vkqigb31bmr872nr05whv4x060xl";
  };

  buildInputs = [ makeWrapper env.ruby bundler nodejs ];

  setSourceRoot = ''
    mkdir -p $out/share
    cp -R loomio-* $out/share/loomio
    export sourceRoot="$out/share/loomio"
  '';

  configurePhase = ''
    export HOME=$PWD
    export GEM_HOME=${env}/${env.ruby.gemPath}
    export RAILS_ENV=production
  '';

  buildPhase = ''
    cd $out/share/loomio
    cp ${database_yml} \
      $out/share/loomio/config/database.yml

    mv $out/share/loomio/config/initializers/active_admin.rb active_admin.rb_COPY
    echo "require 'activeadmin'" > $out/share/loomio/config/initializers/active_admin.rb
    cat active_admin.rb_COPY >> $out/share/loomio/config/initializers/active_admin.rb

    substituteInPlace $out/share/loomio/config/environments/production.rb \
      --replace "# config.assets.manifest = YOUR_PATH" "config.assets.manifest = '${dataDir}/public/assets'" \
      --replace "config.assets.compile = false" "config.assets.compile = true"

    bundle install --local

    rm -f ./bin/*
    bundle exec rake rails:update:bin

    rm -rf $out/share/loomio/log
    ln -s ${dataDir}/log $out/share/loomio/log
    rm -rf $out/share/loomio/tmp
    ln -s ${dataDir}/tmp $out/share/loomio/tmp
    mv $out/share/loomio/public $out/share/loomio/_public
    ln -s ${dataDir}/public $out/share/loomio/public
  '';

  installPhase = ''
    mkdir -p $out/bin

    makeWrapper $out/share/loomio/bin/bundle "$out/bin/loomio-bundle" \
      --run "cd $out/share/loomio" \
      --prefix "PATH" : "$out/share/loomio/bin:${nodejs}/bin:${env.ruby}/bin:${env}/${env.ruby.gemPath}/bin:$PATH" \
      --prefix "HOME" : "$out/share/loomio" \
      --prefix "GEM_HOME" : "${env}/${env.ruby.gemPath}" \
      --prefix "GEM_PATH" : "$out/share/loomio:${bundler}/${env.ruby.gemPath}" \
      --set EXECJS_RUNTIME "Node"
  '';

  meta = with stdenv.lib; {
    homepage = https://github.com/loomio/loomio;
    description = "Loomio is an open-source web application that helps groups make better decisions together";
    license = licenses.gpl3;
    maintainers = with maintainers; [ matejc ];
    platforms = platforms.linux;
  };
}
