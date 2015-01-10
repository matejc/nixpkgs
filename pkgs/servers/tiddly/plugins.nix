{ lib, fetchurl, pythonPackages, tiddlyweb, tiddlywebwiki }:
let
  tiddlyWebPluginFun = plugin:
    pythonPackages.buildPythonPackage rec {
      name = "tiddlyWebPlugin-${plugin.name}";
      propagatedBuildInputs = [ tiddlyweb ] ++ plugin.propagatedBuildInputs or [];
      src = fetchurl {
        sha256 = plugin.sha256;
        url = "https://pypi.python.org/packages/source/t/tiddlywebplugins.${plugin.name}/tiddlywebplugins.${plugin.name}-${plugin.version}.tar.gz";
      };
      passthru = { isPlugin = true; };
    };

  plugins = [

    { name = "cherrypy";
      version = "0.1.1";
      sha256 = "10nv1pfl4wk6fyca3scj4w3pgp5jy2rahs33xvnbhb4c54c7bs6k";
      propagatedBuildInputs = with pythonPackages; [ cherrypy ]; }

    { name = "console";
      version = "0.3.0";
      sha256 = "1109ysw5pdp8sf9hq7n5gvajl8kifmf6336yrraafrahvy8cl87y";
      propagatedBuildInputs = with pythonPackages; [ httpexceptor self.status self.imaker ]; }

    { name = "status";
      version = "0.8";
      sha256 = "0bb7r7rfaayxg7yng61xbzihc84w0r8l2gbx6h9yis0ph31jc4b6"; }

    { name = "imaker";
      version = "0.1.5";
      sha256 = "0xd53vipl372f8kw92x7wxk7jijnkz0fwbr0d4hvpbxfhmnpxr5k";
      propagatedBuildInputs = [ self.pkgstore self.utils ]; }

    { name = "pkgstore";
      version = "0.3";
      sha256 = "1jgy9gw8dch4pv78gmcv6mhzy4b6g0p1987r2r2dgdj9z9pmlxjk"; }

    { name = "utils";
      version = "1.9";
      sha256 = "04cx0d8xgaxgqm6q1xmwzm5ngqncdnqw078rcza25rnh8fv71xkx"; }

    { name = "atom";
      version = "1.4.4";
      sha256 = "0zjiksnq70zcy8yhvzly2mrn7d7clyp5a9di9iwnsggwv65i3426";
      propagatedBuildInputs = with pythonPackages; [ feedgenerator self.differ ]; }

    { name = "differ";
      version = "0.6.4";
      sha256 = "1c2f9pnh8gzsrklc7ha4x16bsdqldgzgygkqc352arsfrv93s9i1"; }

    { name = "cors";
      version = "0.3";
      sha256 = "1jlwck8c075ziyvcqfgc5d219b4bhafmjp4az67pfj5iqgw9wqrb"; }

    { name = "markdown";
      version = "1.2.10";
      sha256 = "09i9abwh25r8l6ppmy19w989zj43zmrcc6nx8bh42yb06fg509xy";
      propagatedBuildInputs = with pythonPackages; [ markdown ]; }

    { name = "whoosher";
      version = "0.9.28";
      sha256 = "0662x37q2pkk9hf3iw55cqznjxw0zq48114bajl9lcbkf237b7dg";
      propagatedBuildInputs = with pythonPackages; [ Whoosh self.utils ]; }

    { name = "csrf";
      version = "0.5.1";
      sha256 = "0wrd0s8g212h3iakfnxm5x3d2n0spria39sw15i1q6pa0ir46gl3"; }

    { name = "templates";
      version = "0.9.6";
      sha256 = "1p9x1l27i39cx2rrw3fs9ahcf7bg5glcnli21k3mdcf7z42yi11x";
      propagatedBuildInputs = with pythonPackages; [ jinja2 ]; }

    { name = "jsonp";
      version = "0.7";
      sha256 = "1cf5i2f3dm7p63cf7083qaq1pznb9qxic1pm9k0zrg5ai2kkw1c5"; }

    { name = "relativetime";
      version = "0.5";
      sha256 = "1cgpgxzh2scdwlja6myzayayasvqbab79n0xkl163wkq57zjgz58"; }

    { name = "privateer";
      version = "0.7";
      sha256 = "0szn0sirzmxrg61nip8xrzkq68q6vv0v9pcma37jr7mvbs9bsrdp";
      propagatedBuildInputs = [ self.utils ]; }

    { name = "sqlalchemy3";
      version = "3.1.1";
      sha256 = "1fj70w4xvc9fk2k9nv05nxazyblwqz3g6sczdmb8m96c755rhx7h";
      propagatedBuildInputs = with pythonPackages; [ pyparsing1 sqlalchemy ]; }

    { name = "mysql3";
      version = "3.1.2";
      sha256 = "0d1w1qqw67jkqm7f81a1y6ymj7yb60iv5idmf8ry6ysmldjv53z3";
      propagatedBuildInputs = with pythonPackages; [ MySQL_python self.sqlalchemy3 ]; }

    { name = "reflector";
      version = "0.9";
      sha256 = "1yk43rg741m80a8mngnb8dvjakh01sd54jisx7qibdyhfs0ixwnv"; }

    { name = "form";
      version = "0.12.1";
      sha256 = "15h78cg9c1d1l0qprwakf4a0cz13772844kqla8d55m82sikl41m"; }

    { name = "pathinfohack";
      version = "1.0.0";
      sha256 = "1l7788k44rwdkp0xskj470yc936xi2j6mk04vxi4n2r5hjjq5sb7"; }

    { name = "prettyerror";
      version = "1.1.1";
      sha256 = "01k338kb3w6q9cglsnabz3rsgzw9wna6gifaxyj14mazwa48syc9"; }

    { name = "oom";
      version = "0.5";
      sha256 = "02g6id96hv5lzhkcvmyv06xzl4j5li3qcd0i8xg2z34z4108cz51"; }

    { name = "mselect";
      version = "0.8";
      sha256 = "0n34vs2jd4i3p58s2bdp69bc3843dlw8w6fwrsqvfqnvm8bj3fsx"; }

    { name = "cookiedomain";
      version = "0.8";
      sha256 = "1qhkcbbg2jyz0hz4g40fzg3z3d2php2l80pybjn059h0y2fcbdx5"; }

    { name = "openid2";
      version = "0.9";
      sha256 = "1h1p9bpac5p86ylwamlr2s3pzkcpx94fzg14djyjgi0wg0rbb69r";
      propagatedBuildInputs = with pythonPackages; [ python_openid ]; }

    { name = "magicuser";
      version = "0.5";
      sha256 = "00hcbxr94jis8mz56wscsl5ajm7dfr84m0djdxklssny3qcn2665"; }

    { name = "socialusers";
      version = "0.9";
      sha256 = "1ris291ac1s5nxrqiypba7sk4vdxyjp6xl9gcpyjsf5f8bj0mhd8";
      propagatedBuildInputs = [ self.utils ]; }

    { name = "hashmaker";
      version = "0.9";
      sha256 = "1cbjmdvrvmisjm2d3jk8kmkjc7jvmkw1xj928nfwn5ang5bry1bk"; }

    { name = "virtualhosting";
      version = "0.4";
      sha256 = "0lc5k8l549zp4mxqknlpq2hvq5jyx5hiz6gd27xmsniivbfja07y"; }

    { name = "logout";
      version = "1.0";
      sha256 = "1n9pqb4kghdk47g1l5lwzxlamva5piicph90zxk32fdlg9ad0lnr"; }

    { name = "lazy";
      version = "0.6";
      sha256 = "1f99r7jrp5fr06bg33p08fqza8m03kpswd46mxpc2i2cgc7jifyz";
      propagatedBuildInputs = [ tiddlywebwiki ]; }
  ];

  self = lib.listToAttrs (map (p: { name = p.name; value = (tiddlyWebPluginFun p); }) plugins);
in
  self
