{ stdenv, buildEnv, fetchgit, fetchurl, rubyLibs, ruby, libxslt, libxml2
, sqlite, openssl, cacert, writeScriptBin
, dataDir ? "/var/lib/panama-api", stateDir ? "/var/lib/panama-api/state" }:
let
  gemspec = map (gem: fetchurl { url=gem.url; sha256=gem.hash; }) (import ./Gemfile-api.nix);

  panamax_api = stdenv.mkDerivation rec {
    name = "panamax-api-${version}";
    version = "0.2.10";

    src = fetchgit {
      rev = "refs/tags/v${version}";
      url = "git://github.com/CenturyLinkLabs/panamax-api";
      sha256 = "02b6fsvbds43vsbhk5wna3fmpq7xj5fx68z657jfl2s6152k6hmc";
    };

    buildInputs = [ rubyLibs.bundler rubyLibs.nokogiri sqlite openssl ruby ];

    installPhase = ''
      mkdir -p $out/share/panamax-api
      cp -R . $out/share/panamax-api
      cd $out/share/panamax-api

      mkdir -p vendor/cache
      ${stdenv.lib.concatStrings (map (gem: "ln -s ${gem} vendor/cache/${gem.name};") gemspec)}

      export HOME=$PWD
      ln -sf ${database_yml} config/database.yml

      bundle config build.nokogiri \
        --use-system-libraries \
        --with-xslt-dir=${libxslt} \
        --with-xml2-dir=${libxml2}

      export RAILS_ENV=production

      bundle install -j4 --verbose --local --deployment

      rm -rf log
      ln -sf ${stateDir}/log .
      ln -sf ${stateDir}/tmp .
    '';
  };

  panamax_api_init = writeScriptBin "panamax-api-init" ''
    #!${stdenv.shell}

    cd ${panamax_api}/share/panamax-api

    export PATH="${rubyLibs.bundler}/bin:${ruby}/bin:$PATH"
    export OPENSSL_X509_CERT_FILE="${cacert}/etc/ca-bundle.crt"
    export RAILS_ENV=production

    mkdir -p ${stateDir}/log
    mkdir -p ${dataDir}

    bundle exec rake db:create && \
    bundle exec rake db:migrate && \
    bundle exec rake db:seed
    # bundle exec rake panamax:templates:load --trace
  '';

  panamax_api_run = writeScriptBin "panamax-api-run" ''
    #!${stdenv.shell}
    cd ${panamax_api}/share/panamax-api
    mkdir -p ${stateDir}/tmp
    export PATH="${rubyLibs.bundler}/bin:${ruby}/bin:$PATH"
    bundle exec rails s $@
  '';

  database_yml = builtins.toFile "database.yml" ''
    development:
      adapter: sqlite3
      database: ${dataDir}/db/mnt/development.sqlite3
      pool: 5
      timeout: 5000

    # See corresponding schema load in spec/support/in_memory_database
    test:
      adapter: sqlite3
      database: ":memory:"
      verbosity: quiet

    production:
      adapter: sqlite3
      database: ${dataDir}/db/mnt/production.sqlite3
      pool: 5
      timeout: 5000
  '';

in
  stdenv.mkDerivation rec {
    name = panamax_api.name;

    unpackPhase = "true";

    installPhase = ''
      mkdir -p $out/bin
      ln -s ${panamax_api_init}/bin/* $out/bin
      ln -s ${panamax_api_run}/bin/* $out/bin
      mkdir -p $out/share
      ln -s ${panamax_api}/share/panamax-api $out/share/panamax-api
    '';

    meta = with stdenv.lib; {
      homepage = https://github.com/CenturyLinkLabs/panamax-api;
      description = "The API behind The Panamax UI";
      license = licenses.asl20;
      maintainers = with maintainers; [ matejc ];
      platforms = platforms.linux;
    };
  }
