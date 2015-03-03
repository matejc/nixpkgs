let
  pkgs = import <nixpkgs> { };
in
{
  "CFPropertyList" = {
    version = "2.3.0";
    source = {
      type = "gem";
      sha256 = "17hncdvqqii0bnkghmwsai96zf98djhw6kqfsx7jy3c5k1x5ii59";
    };
  };
  "actionmailer" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "1js29si4fsbkcp3fwaw1n3rnw0qpz1718gvflwwdscjmqwgsg6f6";
    };
    dependencies = [
      "actionpack"
      "actionview"
      "activejob"
      "mail"
      "rails-dom-testing"
    ];
  };
  "actionpack" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "1q1p7s1jzg0sn7v8bdr6gnzwy3c7gy8qjxv8ya8ld60w74m0y5zs";
    };
    dependencies = [
      "actionview"
      "activesupport"
      "rack"
      "rack-test"
      "rails-dom-testing"
      "rails-html-sanitizer"
    ];
  };
  "actionview" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "1d6bpw3zyfi11f01kdgkjfx4r5aal2kg51ig5piwici1swz6zjxl";
    };
    dependencies = [
      "activesupport"
      "builder"
      "erubis"
      "rails-dom-testing"
      "rails-html-sanitizer"
    ];
  };
  "active_model_serializers" = {
    version = "0.8.3";
    source = {
      type = "gem";
      sha256 = "1dj35qpxy3cgfhqclrjdq958r10lj1agjx53mj1zsxhs5msv23m3";
    };
    dependencies = [
      "activemodel"
    ];
  };
  "activeadmin" = {
    version = "1.0.0.pre";
    source = {
      type = "git";
      url = "git://github.com/activeadmin/activeadmin.git";
      rev = "a0bf8da21b7a6f37e1ad28790187e0244a0d5466";
      fetchSubmodules = false;
      sha256 = "18ipbl6sdfn2gn386yk9pi8y1fxlby36xy26cl8pvcnrqk915x6q";
    };
    dependencies = [
      "arbre"
      "bourbon"
      "coffee-rails"
      "formtastic"
      "formtastic_i18n"
      "inherited_resources"
      "jquery-rails"
      "jquery-ui-rails"
      "kaminari"
      "rails"
      "ransack"
      "sass-rails"
    ];
  };
  "activejob" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "1h5c5ba4pff7x48i9r3ii80315aa27yzyfc39wxslqiz2iqs17qd";
    };
    dependencies = [
      "activesupport"
      "globalid"
    ];
  };
  "activemodel" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "1nd0f0rg53ljb2qan5dq4d0k4kykl9d9chva17jay1589vihjklr";
    };
    dependencies = [
      "activesupport"
      "builder"
    ];
  };
  "activerecord" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "1qakw1nb1l92ry4x9rlsjflxa70r7qnsxq0ha43wb8akyx34cbh5";
    };
    dependencies = [
      "activemodel"
      "activesupport"
      "arel"
    ];
  };
  "activesupport" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "0328cr1js68gz6vxdiahnpgnl7fxsdswmb82wj2pyhnx0qkp02xv";
    };
    dependencies = [
      "i18n"
      "json"
      "minitest"
      "thread_safe"
      "tzinfo"
    ];
  };
  "addressable" = {
    version = "2.3.7";
    source = {
      type = "gem";
      sha256 = "1x1401m59snw59c2bxr10jj10z1n4r4jvz8c55d0c3sh2smbl8kh";
    };
  };
  "aggregate" = {
    version = "0.2.2";
    source = {
      type = "gem";
      sha256 = "0bdwzpla7wigxp9qn6cmjxgqbw852525p5ipf3i8jhk9cgy4a1a9";
    };
  };
  "airbrake" = {
    version = "4.1.0";
    source = {
      type = "gem";
      sha256 = "1i44rfmqy4mhqgngcz25yxapyqjx3d6r2kryc5yhzmpsj5ys7c7v";
    };
    dependencies = [
      "builder"
      "multi_json"
    ];
  };
  "akami" = {
    version = "1.2.2";
    source = {
      type = "gem";
      sha256 = "121qgvhyib7mmi2838hydgbdpgrqbbi7ps83ix21d4p30dpcshxy";
    };
    dependencies = [
      "gyoku"
      "nokogiri"
    ];
  };
  "arbre" = {
    version = "1.0.3";
    source = {
      type = "gem";
      sha256 = "0hl0ixpza7kzwpky13gf6qjfzllm29f1qa79k7aq1qnh5vqirzv4";
    };
    dependencies = [
      "activesupport"
    ];
  };
  "arel" = {
    version = "6.0.0";
    source = {
      type = "gem";
      sha256 = "18wnfnzr2i5p3fygsddjbi1cimws6823nbk8drxidmnj8jz7h0ar";
    };
  };
  "autoprefixer-rails" = {
    version = "5.1.7";
    source = {
      type = "gem";
      sha256 = "14g9vvssbxlh5baj8bm245nxij1z61z2n6mdz6pi06v0bn633xk1";
    };
    dependencies = [
      "execjs"
      "json"
    ];
  };
  "awesome_print" = {
    version = "1.6.1";
    source = {
      type = "gem";
      sha256 = "1vwgsgyyq87iwjxi8bwh56fj3bzx7x2vjv1m6yih1fbhnbcyi2qd";
    };
  };
  "bcrypt" = {
    version = "3.1.10";
    source = {
      type = "gem";
      sha256 = "15cf7zzlj9b0xcx12jf8fmnpc8g1b0yhxal1yr5p7ny3mrz5pll6";
    };
  };
  "better_errors" = {
    version = "2.1.1";
    source = {
      type = "gem";
      sha256 = "11csk41yhijqvp0dkky0cjl8kn6blw4jhr8b6v4islfvvayddcxc";
    };
    dependencies = [
      "coderay"
      "erubis"
      "rack"
    ];
  };
  "bing_translator" = {
    version = "4.4.1";
    source = {
      type = "gem";
      sha256 = "1n12djmdxisiy69k4nmz4923szw05887pxwh888ipxwdilgdsfcl";
    };
    dependencies = [
      "json"
      "nokogiri"
      "savon"
    ];
  };
  "bootstrap-sass" = {
    version = "3.2.0.2";
    source = {
      type = "gem";
      sha256 = "0xz3h2zma45qi135yhn70ms3zw9mi5iz88a8bni9s9y5pgj5lk8y";
    };
    dependencies = [
      "sass"
    ];
  };
  "bourbon" = {
    version = "4.2.1";
    source = {
      type = "gem";
      sha256 = "03szzj1dd448h0p1jgk9ldp04al5h99lfrbx5kdzi6jg7zmblwk9";
    };
    dependencies = [
      "sass"
      "thor"
    ];
  };
  "browser" = {
    version = "0.8.0";
    source = {
      type = "gem";
      sha256 = "1gwyv2qav0ayzlq82axi8s15p56xlfwf3bm9dsk3glh9q7xmmiiy";
    };
  };
  "builder" = {
    version = "3.2.2";
    source = {
      type = "gem";
      sha256 = "14fii7ab8qszrvsvhz6z2z3i4dw0h41a62fjr2h1j8m41vbrmyv2";
    };
  };
  "byebug" = {
    version = "3.5.1";
    source = {
      type = "gem";
      sha256 = "0ldc2r0b316rrn2fgdgiznskj9gb0q9n60243laq7nqw9na8wdan";
    };
    dependencies = [
      "columnize"
      "debugger-linecache"
      "slop"
    ];
  };
  "cancancan" = {
    version = "1.10.1";
    source = {
      type = "gem";
      sha256 = "0xig6s2djds7vxn05ij2z4sam5ns5h92fpv5f7hxp3z44a0dyk4s";
    };
  };
  "capybara" = {
    version = "2.4.4";
    source = {
      type = "gem";
      sha256 = "114k4xi4nfbp3jfbxgwa3fksbwsyibx74gbdqpcgg3dxpmzkaa4f";
    };
    dependencies = [
      "mime-types"
      "nokogiri"
      "rack"
      "rack-test"
      "xpath"
    ];
  };
  "childprocess" = {
    version = "0.5.5";
    source = {
      type = "gem";
      sha256 = "0cxzh17vjlmpqfcas4815x50dc1gzfwgbs51zzpd4chrl6ak4n4v";
    };
    dependencies = [
      "ffi"
    ];
  };
  "climate_control" = {
    version = "0.0.3";
    source = {
      type = "gem";
      sha256 = "0krknwk6b8lwv1j9kjbxib6kf5zh4pxkf3y2vcyycx5d6nci1s55";
    };
    dependencies = [
      "activesupport"
    ];
  };
  "cliver" = {
    version = "0.3.2";
    source = {
      type = "gem";
      sha256 = "096f4rj7virwvqxhkavy0v55rax10r4jqf8cymbvn4n631948xc7";
    };
  };
  "closure_tree" = {
    version = "4.6.3";
    source = {
      type = "gem";
      sha256 = "1sbn59g3pyxr0fblzsd76rz4yz4grxz6x95p708mqvv4057ms7j0";
    };
    dependencies = [
      "activerecord"
      "with_advisory_lock"
    ];
  };
  "cocaine" = {
    version = "0.5.5";
    source = {
      type = "gem";
      sha256 = "0q4n4gacf9ac69kv8n79cmy0rqyg7vcx6m910ddyby4vfkyfjzb3";
    };
    dependencies = [
      "climate_control"
    ];
  };
  "codeclimate-test-reporter" = {
    version = "0.4.6";
    source = {
      type = "gem";
      sha256 = "1fjzhl5w95km6wkjgysz7i020pmqr0cvcwngajc5j76cnviy0rzc";
    };
    dependencies = [
      "simplecov"
    ];
  };
  "coderay" = {
    version = "1.1.0";
    source = {
      type = "gem";
      sha256 = "059wkzlap2jlkhg460pkwc1ay4v4clsmg1bp4vfzjzkgwdckr52s";
    };
  };
  "coffee-rails" = {
    version = "4.1.0";
    source = {
      type = "gem";
      sha256 = "0p3zhs44gsy1p90nmghihzfyl7bsk8kv6j3q7rj3bn74wg8w7nqs";
    };
    dependencies = [
      "coffee-script"
      "railties"
    ];
  };
  "coffee-script" = {
    version = "2.3.0";
    source = {
      type = "gem";
      sha256 = "0i0p52f2s7hk8sq3q9342and3whjnhjhc7ldg8zmnjjcm44asm3d";
    };
    dependencies = [
      "coffee-script-source"
      "execjs"
    ];
  };
  "coffee-script-source" = {
    version = "1.9.1";
    source = {
      type = "gem";
      sha256 = "15r38qiql5v16f4fbp9jckfvyb87xgqyh4paw8fd7pw0vhw1yyzk";
    };
  };
  "columnize" = {
    version = "0.9.0";
    source = {
      type = "gem";
      sha256 = "1832r5nll855r125fkhp475m8bndk1ncna7hxs7la4lng2nnywxb";
    };
  };
  "cookiejar" = {
    version = "0.3.2";
    source = {
      type = "gem";
      sha256 = "04icmz2pwn3iq10g7chahm98hx33d217nxw37idgkm9a28g7r1vz";
    };
  };
  "countries" = {
    version = "0.9.3";
    source = {
      type = "gem";
      sha256 = "0mxsx8z9wbiigpw2nq8jssmm1k936pkn7wy05h09hnrw41f9vm2g";
    };
    dependencies = [
      "currencies"
    ];
  };
  "country_select" = {
    version = "2.1.1";
    source = {
      type = "gem";
      sha256 = "0k2w8qwpcgbrl8ba4wqlh0f7w32xd7mv26k1bxkcvb91cag3zfrv";
    };
    dependencies = [
      "countries"
    ];
  };
  "crack" = {
    version = "0.4.2";
    source = {
      type = "gem";
      sha256 = "1il94m92sz32nw5i6hdq14f1a2c3s9hza9zn6l95fvqhabq38k7a";
    };
    dependencies = [
      "safe_yaml"
    ];
  };
  "css_parser" = {
    version = "1.3.6";
    source = {
      type = "gem";
      sha256 = "0lchdg40z480y2qs95k64kj36wric2i5wiiv8aa926nqgikrhjw3";
    };
    dependencies = [
      "addressable"
    ];
  };
  "cucumber" = {
    version = "1.3.19";
    source = {
      type = "gem";
      sha256 = "170a0yclrc1i9m5wjgwzga3ipb5mbapiha8jcg0g2gjnmzvd77nr";
    };
    dependencies = [
      "builder"
      "diff-lcs"
      "gherkin"
      "multi_json"
      "multi_test"
    ];
  };
  "cucumber-rails" = {
    version = "1.4.2";
    source = {
      type = "gem";
      sha256 = "1wsmqn0027qrp8cay1knvzy6i7glb7dy7li5531nwrx6akvy5ks2";
    };
    dependencies = [
      "capybara"
      "cucumber"
      "mime-types"
      "nokogiri"
      "rails"
    ];
  };
  "currencies" = {
    version = "0.4.2";
    source = {
      type = "gem";
      sha256 = "0ggp5r4wyja31h678s2zd0z3451j9aqkjfkckyjinz90dy0k6yp2";
    };
  };
  "daemons" = {
    version = "1.1.9";
    source = {
      type = "gem";
      sha256 = "1j1m64pirsldhic6x6sg4lcrmp1bs1ihpd49xm8m1b2rc1c3irzy";
    };
  };
  "dalli" = {
    version = "2.7.2";
    source = {
      type = "gem";
      sha256 = "02jzzs10m9n1qlh29mxwl9x34dgsi4bmpcp64x0hvkbb5fdq0rmp";
    };
  };
  "database_cleaner" = {
    version = "1.4.0";
    source = {
      type = "gem";
      sha256 = "007yh1xss0632583h3s7na8nmqsm29qxq2j4344mzfk56i08zvn2";
    };
  };
  "debugger-linecache" = {
    version = "1.2.0";
    source = {
      type = "gem";
      sha256 = "0iwyx190fd5vfwj1gzr8pg3m374kqqix4g4fc4qw29sp54d3fpdz";
    };
  };
  "delayed-plugins-airbrake" = {
    version = "1.1.0";
    source = {
      type = "gem";
      sha256 = "14fv17mzlgd37f6v4slkhm2rqk3zd9y708syld9ad5pdfpi46nsl";
    };
    dependencies = [
      "airbrake"
      "delayed_job"
    ];
  };
  "delayed_job" = {
    version = "4.0.6";
    source = {
      type = "gem";
      sha256 = "1dkfhhc24ii1glb450rbzdsn4rriirw657nkqk41bks3kgw3705c";
    };
    dependencies = [
      "activesupport"
    ];
  };
  "delayed_job_active_record" = {
    version = "4.0.3";
    source = {
      type = "gem";
      sha256 = "0fk5ljmg141j33v6bh7m11h0wq5lm4yrsdcpxpga6xfs24l27xpx";
    };
    dependencies = [
      "activerecord"
      "delayed_job"
    ];
  };
  "devise" = {
    version = "3.4.1";
    source = {
      type = "gem";
      sha256 = "1r1n4s3s70fjb8v5rl9xsgp6vm6x6l89862qk82l8vgmhcjs85j3";
    };
    dependencies = [
      "bcrypt"
      "orm_adapter"
      "railties"
      "responders"
      "thread_safe"
      "warden"
    ];
  };
  "devise-i18n" = {
    version = "0.11.3";
    source = {
      type = "gem";
      sha256 = "0z1wx00s96minh397bwj03dvsn44xh72yl74b47ssdyl1h4f08zj";
    };
  };
  "diff-lcs" = {
    version = "1.2.5";
    source = {
      type = "gem";
      sha256 = "1vf9civd41bnqi6brr5d9jifdw73j9khc6fkhfl1f8r9cpkdvlx1";
    };
  };
  "docile" = {
    version = "1.1.5";
    source = {
      type = "gem";
      sha256 = "0m8j31whq7bm5ljgmsrlfkiqvacrw6iz9wq10r3gwrv5785y8gjx";
    };
  };
  "dotenv" = {
    version = "1.0.2";
    source = {
      type = "gem";
      sha256 = "1g6sdv55842a7iv11wawrbfrx8x5k7gl598nl6my55jb2nbynkmw";
    };
  };
  "em-http-request" = {
    version = "1.1.2";
    source = {
      type = "gem";
      sha256 = "0vbshzj03w09j7ffh8i5dywm4kgjy3a15fp87sxgy95jv00234w0";
    };
    dependencies = [
      "addressable"
      "cookiejar"
      "em-socksify"
      "eventmachine"
      "http_parser.rb"
    ];
  };
  "em-socksify" = {
    version = "0.3.0";
    source = {
      type = "gem";
      sha256 = "12bbi4s02h1c1akdv552l6d1zqc0kpd9vs88811qkz2ywq9yp7ra";
    };
    dependencies = [
      "eventmachine"
    ];
  };
  "email_spec" = {
    version = "1.6.0";
    source = {
      type = "gem";
      sha256 = "00p1cc69ncrgg7m45va43pszip8anx5735w1lsb7p5ygkyw8nnpv";
    };
    dependencies = [
      "launchy"
      "mail"
    ];
  };
  "erubis" = {
    version = "2.7.0";
    source = {
      type = "gem";
      sha256 = "1fj827xqjs91yqsydf0zmfyw9p4l2jz5yikg3mppz6d7fi8kyrb3";
    };
  };
  "eventmachine" = {
    version = "1.0.7";
    source = {
      type = "gem";
      sha256 = "0k4xazfwp7s576bv63jx5b4zgdcyrj0isj64b2dkzm615gx7sarl";
    };
  };
  "excon" = {
    version = "0.44.2";
    source = {
      type = "gem";
      sha256 = "12x3pr4nly58igiiwbn1hcxxdaiph17qcbq4gha5dys0jajhdx3v";
    };
  };
  "execjs" = {
    version = "2.3.0";
    source = {
      type = "gem";
      sha256 = "097v02bhmzc70j7n0yyf8j0z5wms88zcmgpmggby4hnvqxf41y1h";
    };
  };
  "factory_girl" = {
    version = "4.5.0";
    source = {
      type = "gem";
      sha256 = "0qn34ba1midnzms1854yzx0g16sgy7bd9wcsvs66rxd65idsay20";
    };
    dependencies = [
      "activesupport"
    ];
  };
  "factory_girl_rails" = {
    version = "4.5.0";
    source = {
      type = "gem";
      sha256 = "0s2rx50n4s7hwx19zxy60cdg721x2xaa1rnks0j62ii5qwm0nifc";
    };
    dependencies = [
      "factory_girl"
      "railties"
    ];
  };
  "faker" = {
    version = "1.4.3";
    source = {
      type = "gem";
      sha256 = "1plkyz9m7v1qi69pxz2vxw0f2x6nxzzzmwkax80xqwx2d2p2pvlr";
    };
    dependencies = [
      "i18n"
    ];
  };
  "faraday" = {
    version = "0.9.1";
    source = {
      type = "gem";
      sha256 = "1h33znnfzxpscgpq28i9fcqijd61h61zgs3gabpdgqfa1043axsn";
    };
    dependencies = [
      "multipart-post"
    ];
  };
  "faye" = {
    version = "1.1.1";
    source = {
      type = "gem";
      sha256 = "0prcyi4calhcaks72cl76391hqqv7vh074fc1a5dv3wv32cc56ak";
    };
    dependencies = [
      "cookiejar"
      "em-http-request"
      "eventmachine"
      "faye-websocket"
      "multi_json"
      "rack"
      "websocket-driver"
    ];
  };
  "faye-websocket" = {
    version = "0.9.2";
    source = {
      type = "gem";
      sha256 = "14y4kip67bbqppr1b17ymhj140ks6xp28wr7whcz4g6gzhvhadb8";
    };
    dependencies = [
      "eventmachine"
      "websocket-driver"
    ];
  };
  "ffi" = {
    version = "1.9.6";
    source = {
      type = "gem";
      sha256 = "1ckw1336rnyv9yvvl614qgkqqi477g4hljv6xsws2vz14ynlvzhj";
    };
  };
  "fission" = {
    version = "0.5.0";
    source = {
      type = "gem";
      sha256 = "09pmp1j1rr8r3pcmbn2na2ls7s1j9ijbxj99xi3a8r6v5xhjdjzh";
    };
    dependencies = [
      "CFPropertyList"
    ];
  };
  "fog" = {
    version = "1.28.0";
    source = {
      type = "gem";
      sha256 = "12b03r77vdicbsc7j6by2gysm16wij32z65qp6bkrxkfba9yb37h";
    };
    dependencies = [
      "fog-atmos"
      "fog-aws"
      "fog-brightbox"
      "fog-core"
      "fog-ecloud"
      "fog-json"
      "fog-profitbricks"
      "fog-radosgw"
      "fog-riakcs"
      "fog-sakuracloud"
      "fog-serverlove"
      "fog-softlayer"
      "fog-storm_on_demand"
      "fog-terremark"
      "fog-vmfusion"
      "fog-voxel"
      "fog-xml"
      "ipaddress"
      "nokogiri"
    ];
  };
  "fog-atmos" = {
    version = "0.1.0";
    source = {
      type = "gem";
      sha256 = "1aaxgnw9zy96gsh4h73kszypc32sx497s6bslvhfqh32q9d1y8c9";
    };
    dependencies = [
      "fog-core"
      "fog-xml"
    ];
  };
  "fog-aws" = {
    version = "0.1.0";
    source = {
      type = "gem";
      sha256 = "15l5lbhkjv6d00civs60ajfjj6j3205qdhr647pf0nqq75sjxnk3";
    };
    dependencies = [
      "fog-core"
      "fog-json"
      "fog-xml"
      "ipaddress"
    ];
  };
  "fog-brightbox" = {
    version = "0.7.1";
    source = {
      type = "gem";
      sha256 = "1cpa92q2ls51gidxzn407x53f010k0hmrl94ipw7rdzdapp8c4cn";
    };
    dependencies = [
      "fog-core"
      "fog-json"
      "inflecto"
    ];
  };
  "fog-core" = {
    version = "1.29.0";
    source = {
      type = "gem";
      sha256 = "0ayv9j3i7jy2d1l4gw6sfchgb8l62590a6fpvpr7qvdjc79mvm3p";
    };
    dependencies = [
      "builder"
      "excon"
      "formatador"
      "mime-types"
      "net-scp"
      "net-ssh"
    ];
  };
  "fog-ecloud" = {
    version = "0.0.2";
    source = {
      type = "gem";
      sha256 = "0lhxjp6gi48zanqmkblyhxjp0lknl1akifgfk5lq3j3vj2d3pnr8";
    };
    dependencies = [
      "fog-core"
      "fog-xml"
    ];
  };
  "fog-json" = {
    version = "1.0.0";
    source = {
      type = "gem";
      sha256 = "1517sm8bl0bmaw2fbaf5ra6midq3wzgkpm55lb9rw6jm5ys23lyw";
    };
    dependencies = [
      "multi_json"
    ];
  };
  "fog-profitbricks" = {
    version = "0.0.1";
    source = {
      type = "gem";
      sha256 = "019wdqwxjbggah72d1a0ziq7ybxhw4iwvlybl36vwhqg2aqmhlkn";
    };
    dependencies = [
      "fog-core"
      "fog-xml"
      "nokogiri"
    ];
  };
  "fog-radosgw" = {
    version = "0.0.3";
    source = {
      type = "gem";
      sha256 = "1fbpi0sfff5f5hrn4f7ish260cykzcqvzwmvm61i6mprfrfnx10r";
    };
    dependencies = [
      "fog-core"
      "fog-json"
      "fog-xml"
    ];
  };
  "fog-riakcs" = {
    version = "0.1.0";
    source = {
      type = "gem";
      sha256 = "1nbxc4dky3agfwrmgm1aqmi59p6vnvfnfbhhg7xpg4c2cf41whxm";
    };
    dependencies = [
      "fog-core"
      "fog-json"
      "fog-xml"
    ];
  };
  "fog-sakuracloud" = {
    version = "1.0.0";
    source = {
      type = "gem";
      sha256 = "1805m44x2pclhjyvdrpj6zg8l9dldgnc20h0g61r7hqxpydz066x";
    };
    dependencies = [
      "fog-core"
      "fog-json"
    ];
  };
  "fog-serverlove" = {
    version = "0.1.1";
    source = {
      type = "gem";
      sha256 = "094plkkr6xiss8k85fp66g7z544kxgfx1ck0f3sqndk27miw26jk";
    };
    dependencies = [
      "fog-core"
      "fog-json"
    ];
  };
  "fog-softlayer" = {
    version = "0.4.1";
    source = {
      type = "gem";
      sha256 = "1cf6y6xxjjpjglz31kf6jmmyh687x7sxhn4bx3hlr1nb1hcy19sq";
    };
    dependencies = [
      "fog-core"
      "fog-json"
    ];
  };
  "fog-storm_on_demand" = {
    version = "0.1.0";
    source = {
      type = "gem";
      sha256 = "0rrfv37x9y07lvdd03pbappb8ybvqb6g8rxzwvgy3mmbmbc6l6d2";
    };
    dependencies = [
      "fog-core"
      "fog-json"
    ];
  };
  "fog-terremark" = {
    version = "0.0.4";
    source = {
      type = "gem";
      sha256 = "0bxznlc904zaw3qaxhkvhqqbrv9n6nf5idih8ra9dihvacifwhvc";
    };
    dependencies = [
      "fog-core"
      "fog-xml"
    ];
  };
  "fog-vmfusion" = {
    version = "0.0.1";
    source = {
      type = "gem";
      sha256 = "0x1vxc4a627g7ambcprhxiqvywy64li90145r96b2ig9z23hmy7g";
    };
    dependencies = [
      "fission"
      "fog-core"
    ];
  };
  "fog-voxel" = {
    version = "0.0.2";
    source = {
      type = "gem";
      sha256 = "0by7cs0c044b8dkcmcf3pjzydnrakj8pnbcxzhw8hwlgqr0jfqgn";
    };
    dependencies = [
      "fog-core"
      "fog-xml"
    ];
  };
  "fog-xml" = {
    version = "0.1.1";
    source = {
      type = "gem";
      sha256 = "0kgxjwz0mzyp7bgj1ycl9jyfmzfqc1fjdz9sm57fgj5w31jfvxw5";
    };
    dependencies = [
      "fog-core"
      "nokogiri"
    ];
  };
  "font-awesome-sass" = {
    version = "4.2.2";
    source = {
      type = "gem";
      sha256 = "0463pswz2zbk0hcbb66s1vm1lq4c0mgsppk9w2zk5zs8rvc4fm4h";
    };
    dependencies = [
      "sass"
    ];
  };
  "foreman" = {
    version = "0.77.0";
    source = {
      type = "gem";
      sha256 = "0s9kgbyxz19149h5d329kd3wc9p5g3lkrkva1sd88sn08k1kjgq4";
    };
    dependencies = [
      "dotenv"
      "thor"
    ];
  };
  "formatador" = {
    version = "0.2.5";
    source = {
      type = "gem";
      sha256 = "1gc26phrwlmlqrmz4bagq1wd5b7g64avpx0ghxr9xdxcvmlii0l0";
    };
  };
  "formtastic" = {
    version = "3.1.3";
    source = {
      type = "gem";
      sha256 = "0qsfzx1y7gb94kkdi1rzwligiyzvqk4a18qdw77d4rwz71zx12w5";
    };
    dependencies = [
      "actionpack"
    ];
  };
  "formtastic_i18n" = {
    version = "0.1.1";
    source = {
      type = "gem";
      sha256 = "0xcica34l8fi6xhsak23mvxv2j35hrvn0n0nkrbhzzphhqjmh81d";
    };
  };
  "friendly_id" = {
    version = "5.0.5";
    source = {
      type = "gem";
      sha256 = "00rk211zh8bp6wvwq7s3flz1qyiyhpx1sh459q54m8ixm2knwkck";
    };
    dependencies = [
      "activerecord"
    ];
  };
  "gherkin" = {
    version = "2.12.2";
    source = {
      type = "gem";
      sha256 = "1mxfgw15pii1jmq00xxbyp77v71mh3bp99ndgwzfwkxvbcisha25";
    };
    dependencies = [
      "multi_json"
    ];
  };
  "globalid" = {
    version = "0.3.3";
    source = {
      type = "gem";
      sha256 = "0cb4bf8fsl3c6sac0nb9slsqa29i9ia4bzh3qv0bw80k4bxc1pa3";
    };
    dependencies = [
      "activesupport"
    ];
  };
  "gravtastic" = {
    version = "3.2.6";
    source = {
      type = "gem";
      sha256 = "0kvk7p05pq0w8adyl8dc5g97vnf6l987rbpirxhjnh3wrz7ap67g";
    };
  };
  "gyoku" = {
    version = "1.2.2";
    source = {
      type = "gem";
      sha256 = "049g7nppxdmwvgf9k0a92clyh62q55qi0kxa9ip11d17k40wsr5i";
    };
    dependencies = [
      "builder"
    ];
  };
  "haml" = {
    version = "4.0.6";
    source = {
      type = "gem";
      sha256 = "08zzpqij5sxp1yjq7hw7c4f8xc8dxhvdhw7mv9qqxn9q3y55zpif";
    };
    dependencies = [
      "tilt"
    ];
  };
  "haml-rails" = {
    version = "0.8.2";
    source = {
      type = "gem";
      sha256 = "0vk6min857ianbm68ylazcfrf52kyhhn625snwpm5fw0994apf8s";
    };
    dependencies = [
      "actionpack"
      "activesupport"
      "haml"
      "html2haml"
      "railties"
    ];
  };
  "has_scope" = {
    version = "0.6.0";
    source = {
      type = "gem";
      sha256 = "11p3zikgr5j6mjb646wb045wjksqzj13xbfhwzisa0avvn3m7j4l";
    };
    dependencies = [
      "actionpack"
      "activesupport"
    ];
  };
  "hashie" = {
    version = "3.4.0";
    source = {
      type = "gem";
      sha256 = "00jqcmrv0qx8cxig5dw2l8gx536w2xy44y7k2p28zzw7006g4fay";
    };
  };
  "heroku-deflater" = {
    version = "0.5.3";
    source = {
      type = "gem";
      sha256 = "04qaf6la13sdbg81qaz39j6w13yvfhbhk626rmpp3fmmag7174lr";
    };
    dependencies = [
      "rack"
    ];
  };
  "hike" = {
    version = "1.2.3";
    source = {
      type = "gem";
      sha256 = "0i6c9hrszzg3gn2j41v3ijnwcm8cc2931fnjiv6mnpl4jcjjykhm";
    };
  };
  "html2haml" = {
    version = "2.0.0";
    source = {
      type = "gem";
      sha256 = "069zcy8lr010hn4qmbi8g5srdf69brk8nbgx4zcqcgbgsl4m8d4i";
    };
    dependencies = [
      "erubis"
      "haml"
      "nokogiri"
      "ruby_parser"
    ];
  };
  "http_accept_language" = {
    version = "2.0.5";
    source = {
      type = "gem";
      sha256 = "0vg6vaiv1d8dfynplyyifk26hjbygajqpz9azng04v9hd8l16isv";
    };
  };
  "http_parser.rb" = {
    version = "0.6.0";
    source = {
      type = "gem";
      sha256 = "15nidriy0v5yqfjsgsra51wmknxci2n2grliz78sf9pga3n0l7gi";
    };
  };
  "httparty" = {
    version = "0.13.3";
    source = {
      type = "gem";
      sha256 = "0f4g5p0dfy7wsj3g91lkm9f2ryz3sf335i80ldl63qgm7gqb9mbi";
    };
    dependencies = [
      "json"
      "multi_xml"
    ];
  };
  "httpi" = {
    version = "2.3.0";
    source = {
      type = "gem";
      sha256 = "1r1lwn7vvlrfbqa0vvkmz7mg9prjgy3xxpri0innkwvaj2sw7r0i";
    };
    dependencies = [
      "rack"
    ];
  };
  "i18n" = {
    version = "0.7.0";
    source = {
      type = "gem";
      sha256 = "1i5z1ykl8zhszsxcs8mzl8d0dxgs3ylz8qlzrw74jb0gplkx6758";
    };
  };
  "inflecto" = {
    version = "0.0.2";
    source = {
      type = "gem";
      sha256 = "085l5axmvqw59mw5jg454a3m3gr67ckq9405a075isdsn7bm3sp4";
    };
  };
  "inherited_resources" = {
    version = "1.6.0";
    source = {
      type = "gem";
      sha256 = "0kv0m8gai3vg648kcdq80wndhv4ricc5a16dv39aghml6hdm8k4j";
    };
    dependencies = [
      "actionpack"
      "has_scope"
      "railties"
      "responders"
    ];
  };
  "intercom" = {
    version = "2.4.4";
    source = {
      type = "gem";
      sha256 = "03b3bqr12li92nbqfdg348464gaar3r0s08swgsbb0ws2kwcq025";
    };
    dependencies = [
      "json"
    ];
  };
  "intercom-rails" = {
    version = "0.2.27";
    source = {
      type = "gem";
      sha256 = "0638sh59g5higw88mgwyy2zgnig3kdc6gmfcz35fivzjr1r2866x";
    };
    dependencies = [
      "activesupport"
    ];
  };
  "ipaddress" = {
    version = "0.8.0";
    source = {
      type = "gem";
      sha256 = "0cwy4pyd9nl2y2apazp3hvi12gccj5a3ify8mi8k3knvxi5wk2ir";
    };
  };
  "jquery-atwho-rails" = {
    version = "0.4.11";
    source = {
      type = "gem";
      sha256 = "0cz1lgqvznwhlqb0lyrapb6xhamvvwrgdryiczv8hi6sjy0jiz0v";
    };
  };
  "jquery-fileupload-rails" = {
    version = "0.4.4";
    source = {
      type = "gem";
      sha256 = "1jag38wjhngh5hl03648y15z9b1yd5gmlpg4v0r2cjylqw63mhvi";
    };
    dependencies = [
      "actionpack"
      "railties"
      "sass"
    ];
  };
  "jquery-rails" = {
    version = "3.1.2";
    source = {
      type = "gem";
      sha256 = "0h5a565i3l2mbd221m6mz9d1nr53pz19i9qxv08qr1dv0yx2pr3y";
    };
    dependencies = [
      "railties"
      "thor"
    ];
  };
  "jquery-ui-rails" = {
    version = "5.0.3";
    source = {
      type = "gem";
      sha256 = "1161a8hl9qq7kfzc1ilmy3hag545c4m224pdzq4cgl2xc2pxvsp5";
    };
    dependencies = [
      "railties"
    ];
  };
  "json" = {
    version = "1.8.2";
    source = {
      type = "gem";
      sha256 = "0zzvv25vjikavd3b1bp6lvbgj23vv9jvmnl4vpim8pv30z8p6vr5";
    };
  };
  "jwt" = {
    version = "1.3.0";
    source = {
      type = "gem";
      sha256 = "09fry9yfqbmpjljjkglknyfrsvjzkza9diq40ymaza0qwjhf5r68";
    };
  };
  "kaminari" = {
    version = "0.16.3";
    source = {
      type = "gem";
      sha256 = "14vx3kgssl4lv2kn6grr5v2whsynx5rbl1j9aqiq8nc3d7j74l67";
    };
    dependencies = [
      "actionpack"
      "activesupport"
    ];
  };
  "launchy" = {
    version = "2.4.3";
    source = {
      type = "gem";
      sha256 = "190lfbiy1vwxhbgn4nl4dcbzxvm049jwc158r2x7kq3g5khjrxa2";
    };
    dependencies = [
      "addressable"
    ];
  };
  "librato-metrics" = {
    version = "1.5.0";
    source = {
      type = "gem";
      sha256 = "10cpjpp4ps3k3yxlb8wykgzdgwix8jngrcpj4bj0z43ncx1lygii";
    };
    dependencies = [
      "aggregate"
      "faraday"
      "multi_json"
    ];
  };
  "librato-rack" = {
    version = "0.4.5";
    source = {
      type = "gem";
      sha256 = "0w32sk585hnk1kw4ynmy4jh8j778g3qpmdbwf3jprr99636yxk4q";
    };
    dependencies = [
      "librato-metrics"
    ];
  };
  "librato-rails" = {
    version = "0.11.1";
    source = {
      type = "gem";
      sha256 = "0rr5lbdwywnniznlr5rd5b2ply8bpmhzgv82530ykdjiga1pg1a2";
    };
    dependencies = [
      "activesupport"
      "librato-rack"
      "railties"
    ];
  };
  "loofah" = {
    version = "2.0.1";
    source = {
      type = "gem";
      sha256 = "0v66swdhrk8whlr2wd88acnvaqvj981n83kq9qvqay7qjl9q2zz4";
    };
    dependencies = [
      "nokogiri"
    ];
  };
  "macaddr" = {
    version = "1.7.1";
    source = {
      type = "gem";
      sha256 = "1clii8mvhmh5lmnm95ljnjygyiyhdpja85c5vy487rhxn52scn0b";
    };
    dependencies = [
      "systemu"
    ];
  };
  "mail" = {
    version = "2.6.3";
    source = {
      type = "gem";
      sha256 = "1nbg60h3cpnys45h7zydxwrl200p7ksvmrbxnwwbpaaf9vnf3znp";
    };
    dependencies = [
      "mime-types"
    ];
  };
  "memcachier" = {
    version = "0.0.2";
    source = {
      type = "gem";
      sha256 = "1yp9cp5h0cb1wkcjcbyy7zrxf55fwjwsqnng8c9vcrxsx68zlnph";
    };
  };
  "method_source" = {
    version = "0.8.2";
    source = {
      type = "gem";
      sha256 = "1g5i4w0dmlhzd18dijlqw5gk27bv6dj2kziqzrzb7mpgxgsd1sf2";
    };
  };
  "mime-types" = {
    version = "1.25.1";
    source = {
      type = "gem";
      sha256 = "0mhzsanmnzdshaba7gmsjwnv168r1yj8y0flzw88frw1cickrvw8";
    };
  };
  "mini_portile" = {
    version = "0.6.2";
    source = {
      type = "gem";
      sha256 = "0h3xinmacscrnkczq44s6pnhrp4nqma7k056x5wv5xixvf2wsq2w";
    };
  };
  "minitest" = {
    version = "5.5.1";
    source = {
      type = "gem";
      sha256 = "1h8jn0rgmwy37jnhfcg55iilw0n370vgp8xnh0g5laa8rhv32fyn";
    };
  };
  "modernizr-rails" = {
    version = "2.7.1";
    source = {
      type = "gem";
      sha256 = "09lxb2d3h15gqicr6rlpa56mls3vxicvz4dlbsl7dm3gp2rly29m";
    };
  };
  "momentjs-rails" = {
    version = "2.9.0";
    source = {
      type = "gem";
      sha256 = "16kq530cfjvsyg0cm28pm9dzvrc5w04jzs1hdqvsvpzy99p5y8f7";
    };
    dependencies = [
      "railties"
    ];
  };
  "multi_json" = {
    version = "1.10.1";
    source = {
      type = "gem";
      sha256 = "1ll21dz01jjiplr846n1c8yzb45kj5hcixgb72rz0zg8fyc9g61c";
    };
  };
  "multi_test" = {
    version = "0.1.2";
    source = {
      type = "gem";
      sha256 = "1sx356q81plr67hg16jfwz9hcqvnk03bd9n75pmdw8pfxjfy1yxd";
    };
  };
  "multi_xml" = {
    version = "0.5.5";
    source = {
      type = "gem";
      sha256 = "0i8r7dsz4z79z3j023l8swan7qpbgxbwwz11g38y2vjqjk16v4q8";
    };
  };
  "multipart-post" = {
    version = "2.0.0";
    source = {
      type = "gem";
      sha256 = "09k0b3cybqilk1gwrwwain95rdypixb2q9w65gd44gfzsd84xi1x";
    };
  };
  "net-scp" = {
    version = "1.2.1";
    source = {
      type = "gem";
      sha256 = "0b0jqrcsp4bbi4n4mzyf70cp2ysyp6x07j8k8cqgxnvb4i3a134j";
    };
    dependencies = [
      "net-ssh"
    ];
  };
  "net-ssh" = {
    version = "2.9.2";
    source = {
      type = "gem";
      sha256 = "1p0bj41zrmw5lhnxlm1pqb55zfz9y4p9fkrr9a79nrdmzrk1ph8r";
    };
  };
  "newrelic_rpm" = {
    version = "3.10.0.279";
    source = {
      type = "gem";
      sha256 = "0wc39fa352b54l9l043kb9m4zpn566nj4sc2nyn8r1lbwpakyxly";
    };
  };
  "nokogiri" = {
    version = "1.6.6.2";
    source = {
      type = "gem";
      sha256 = "1j4qv32qjh67dcrc1yy1h8sqjnny8siyy4s44awla8d6jk361h30";
    };
    dependencies = [
      "mini_portile"
    ];
  };
  "nori" = {
    version = "2.4.0";
    source = {
      type = "gem";
      sha256 = "0p0920csbhxp3h3z893mm3mavx1pbk5mlx1mdm591nv44hfzj932";
    };
  };
  "oauth" = {
    version = "0.4.7";
    source = {
      type = "gem";
      sha256 = "1k5j09p3al3clpjl6lax62qmhy43f3j3g7i6f9l4dbs6r5vpv95w";
    };
  };
  "oauth2" = {
    version = "1.0.0";
    source = {
      type = "gem";
      sha256 = "0zaa7qnvizv363apmxx9vxa8f6c6xy70z0jm0ydx38xvhxr8898r";
    };
    dependencies = [
      "faraday"
      "jwt"
      "multi_json"
      "multi_xml"
      "rack"
    ];
  };
  "omniauth" = {
    version = "1.2.2";
    source = {
      type = "gem";
      sha256 = "1f0hd9ngfb6f8wz8h2r5n8lr99jqjaghn0h2mljdc6fw031ap7lk";
    };
    dependencies = [
      "hashie"
      "rack"
    ];
  };
  "omniauth-browserid" = {
    version = "0.0.1";
    source = {
      type = "gem";
      sha256 = "0x99pkk397span6kaih1cfnl59xhap80xnkkcj0kkjsv315iglb8";
    };
    dependencies = [
      "faraday"
      "multi_json"
      "omniauth"
    ];
  };
  "omniauth-facebook" = {
    version = "1.6.0";
    source = {
      type = "gem";
      sha256 = "1abwbvh08wx4wjqpl647aw2l2gncds6k8km23l6bhc1vv332yrf5";
    };
    dependencies = [
      "omniauth-oauth2"
    ];
  };
  "omniauth-google-oauth2" = {
    version = "0.2.6";
    source = {
      type = "gem";
      sha256 = "1nba1iy6w2wj79pvnp9r5bw7jhks0287lw748vkxl9xmwccldnhj";
    };
    dependencies = [
      "omniauth"
      "omniauth-oauth2"
    ];
  };
  "omniauth-oauth" = {
    version = "1.0.1";
    source = {
      type = "gem";
      sha256 = "0ng7zcsfx0hv4yqwj80y1yc6wh5511p07lihaf9j7a3bzqqgn6wz";
    };
    dependencies = [
      "oauth"
      "omniauth"
    ];
  };
  "omniauth-oauth2" = {
    version = "1.2.0";
    source = {
      type = "gem";
      sha256 = "1ffg4inm24ri0w4wm3s70cw689b6bxdnixvaarp85r1qvz51jmhg";
    };
    dependencies = [
      "faraday"
      "multi_json"
      "oauth2"
      "omniauth"
    ];
  };
  "omniauth-twitter" = {
    version = "1.1.0";
    source = {
      type = "gem";
      sha256 = "0dgf18cidgda6mp4n6dp4rdsk09w6w03aiajs3x5qpmq3xh6rj09";
    };
    dependencies = [
      "multi_json"
      "omniauth-oauth"
    ];
  };
  "omnicontacts" = {
    version = "0.3.5";
    source = {
      type = "gem";
      sha256 = "1a192w9dv6b4fg9bf29kbs79s51hahdpzhxqcgnb1g2yikfkyaq1";
    };
    dependencies = [
      "json"
      "rack"
    ];
  };
  "orm_adapter" = {
    version = "0.5.0";
    source = {
      type = "gem";
      sha256 = "1fg9jpjlzf5y49qs9mlpdrgs5rpcyihq1s4k79nv9js0spjhnpda";
    };
  };
  "paper_trail" = {
    version = "4.0.0.beta2";
    source = {
      type = "gem";
      sha256 = "17hnxw657wp3ahfc5r91gwmwcxv6jr41ibvhwyyllnm68gana580";
    };
    dependencies = [
      "activerecord"
      "activesupport"
    ];
  };
  "paperclip" = {
    version = "4.2.1";
    source = {
      type = "gem";
      sha256 = "0jnp334vwxvjri5nw1hfqwcirq5ab5zq8gqqxi5fip74kny05s79";
    };
    dependencies = [
      "activemodel"
      "activesupport"
      "cocaine"
      "mime-types"
    ];
  };
  "pg" = {
    version = "0.17.1";
    source = {
      type = "gem";
      sha256 = "19hhlq5cp0cgm9b8daxjn8rkk8fq7bxxv1gd43l2hk0qgy7kx4z7";
    };
  };
  "pg_search" = {
    version = "0.7.9";
    source = {
      type = "gem";
      sha256 = "0glk0a91s74vxypb8iw1vkx291xmpff0m9liih2fjadrfjs0bcll";
    };
    dependencies = [
      "activerecord"
      "activesupport"
      "arel"
    ];
  };
  "poltergeist" = {
    version = "1.6.0";
    source = {
      type = "gem";
      sha256 = "0mpy2yhn0bhm2s78h8wy22j6378vvsdkj5pcvhr2zfhdjf46g41d";
    };
    dependencies = [
      "capybara"
      "cliver"
      "multi_json"
      "websocket-driver"
    ];
  };
  "polyamorous" = {
    version = "1.1.0";
    source = {
      type = "gem";
      sha256 = "0qixlr319w9f6wdbm5b2fxvssil1p7kgnl9schprjsvr74pidcj9";
    };
    dependencies = [
      "activerecord"
    ];
  };
  "private_pub" = {
    version = "1.0.3";
    source = {
      type = "git";
      url = "git://github.com/loomio/private_pub.git";
      rev = "875b3de1711b200ce070d4a6d0f83b88fb66f5b0";
      fetchSubmodules = false;
      sha256 = "1q9zih90vi1lmr1493ak062wafs97pi7zn662v36xynhlik48b91";
    };
    dependencies = [
      "faye"
    ];
  };
  "pry" = {
    version = "0.10.1";
    source = {
      type = "gem";
      sha256 = "1j0r5fm0wvdwzbh6d6apnp7c0n150hpm9zxpm5xvcgfqr36jaj8z";
    };
    dependencies = [
      "coderay"
      "method_source"
      "slop"
    ];
  };
  "pry-rails" = {
    version = "0.3.3";
    source = {
      type = "gem";
      sha256 = "0h5w4zdcqp2bja84jnpmvxfff4f3dw1dkdfbwll71dl170qg27z8";
    };
    dependencies = [
      "pry"
    ];
  };
  "puma" = {
    version = "2.11.1";
    source = {
      type = "gem";
      sha256 = "1976ws9vg4hawm408v1ibc6rvdynai9fhdc5kgs84wdqk8m5vh8r";
    };
    dependencies = [
      "rack"
    ];
    buildInputs = [ pkgs.openssl ];
  };
  "quiet_assets" = {
    version = "1.1.0";
    source = {
      type = "gem";
      sha256 = "0qsd4msqv3dzaamdpi4a8p0ky81kgdxjdyg6wi5zw62xicsmikap";
    };
    dependencies = [
      "railties"
    ];
  };
  "rack" = {
    version = "1.6.0";
    source = {
      type = "gem";
      sha256 = "1f57f8xmrgfgd76s6mq7vx6i266zm4330igw71an1g0kh3a42sbb";
    };
  };
  "rack-canonical-host" = {
    version = "0.1.0";
    source = {
      type = "gem";
      sha256 = "1cln4af18gk61kyz77lgk3hlz7r9giy6lmwi3i2ddq691ska7wf2";
    };
    dependencies = [
      "addressable"
      "rack"
    ];
  };
  "rack-test" = {
    version = "0.6.3";
    source = {
      type = "gem";
      sha256 = "0h6x5jq24makgv2fq5qqgjlrk74dxfy62jif9blk43llw8ib2q7z";
    };
    dependencies = [
      "rack"
    ];
  };
  "rack_session_access" = {
    version = "0.1.1";
    source = {
      type = "gem";
      sha256 = "00jn5bglzf9vvmga78g5mwcxpp76bxx63bzr1p0fgprv08ggfbp1";
    };
    dependencies = [
      "builder"
      "rack"
    ];
  };
  "rails" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "121h9mgbv6yk1dmwcjy0s6kkjq80cjp5cx9vzzzmy51p4a5sg56k";
    };
    dependencies = [
      "actionmailer"
      "actionpack"
      "actionview"
      "activejob"
      "activemodel"
      "activerecord"
      "activesupport"
      "railties"
      "sprockets-rails"
    ];
  };
  "rails-deprecated_sanitizer" = {
    version = "1.0.3";
    source = {
      type = "gem";
      sha256 = "0qxymchzdxww8bjsxj05kbf86hsmrjx40r41ksj0xsixr2gmhbbj";
    };
    dependencies = [
      "activesupport"
    ];
  };
  "rails-dom-testing" = {
    version = "1.0.5";
    source = {
      type = "gem";
      sha256 = "04vgdw4xsf0m0wcy4j2pnxx5lp0mmxxabkh10j6br61yycib59im";
    };
    dependencies = [
      "activesupport"
      "nokogiri"
      "rails-deprecated_sanitizer"
    ];
  };
  "rails-html-sanitizer" = {
    version = "1.0.1";
    source = {
      type = "gem";
      sha256 = "1vldl034sph1x5z69mlnvi266hpxral4k4prbxjps20aqcb8gh7q";
    };
    dependencies = [
      "loofah"
    ];
  };
  "rails_12factor" = {
    version = "0.0.3";
    source = {
      type = "gem";
      sha256 = "1x8gj0d3j3a789nkfrkj98icx00bannblz81z84j29k6k79qi6zf";
    };
    dependencies = [
      "rails_serve_static_assets"
      "rails_stdout_logging"
    ];
  };
  "rails_serve_static_assets" = {
    version = "0.0.4";
    source = {
      type = "gem";
      sha256 = "0xy8m9ly0ks0v7cg702kszgb4s330yil40rz1053jqzdi1b5566r";
    };
  };
  "rails_stdout_logging" = {
    version = "0.0.3";
    source = {
      type = "gem";
      sha256 = "17ha23x2is52msc8n4kj08yvi6p063i0h39mr023ycg35n4g7aix";
    };
  };
  "railties" = {
    version = "4.2.0";
    source = {
      type = "gem";
      sha256 = "0wwlaxkgvm8rgvimiw6nr0r78lbfsr4gf04hsm5808d6viw358br";
    };
    dependencies = [
      "actionpack"
      "activesupport"
      "rake"
      "thor"
    ];
  };
  "rake" = {
    version = "10.4.2";
    source = {
      type = "gem";
      sha256 = "1rn03rqlf1iv6n87a78hkda2yqparhhaivfjpizblmxvlw2hk5r8";
    };
  };
  "ransack" = {
    version = "1.6.3";
    source = {
      type = "gem";
      sha256 = "0zny15y3d2y47nv87gk4vihn4f9fywm4h878lvvsv44x95bcia4z";
    };
    dependencies = [
      "actionpack"
      "activerecord"
      "activesupport"
      "i18n"
      "polyamorous"
    ];
  };
  "redcarpet" = {
    version = "3.1.2";
    source = {
      type = "gem";
      sha256 = "076p52lkns90hqs27rs4kns2bg7maz8qxr87bl34yd6in319flzz";
    };
  };
  "responders" = {
    version = "2.1.0";
    source = {
      type = "gem";
      sha256 = "1pbrzkqr1a8g0yvwrmhwh6s15q3bnfqfqd2g2jw90fwmgk0m0bv7";
    };
    dependencies = [
      "railties"
    ];
  };
  "rinku" = {
    version = "1.7.3";
    source = {
      type = "gem";
      sha256 = "1jh6nys332brph55i6x6cil6swm086kxjw34wq131nl6mwryqp7b";
    };
  };
  "rmagick" = {
    version = "2.13.4";
    source = {
      type = "gem";
      sha256 = "1yhsai6xfpbiw6scjqfvgg0j6qmfxhbmskqa5gk52pmhw4pwwxvq";
    };
  };
  "roadie" = {
    version = "3.0.3";
    source = {
      type = "gem";
      sha256 = "0a7j5i3xp2535sa96x82pb7z3gjf64hwyihrpjlqwkngl8d2c6dy";
    };
    dependencies = [
      "css_parser"
      "nokogiri"
    ];
  };
  "roadie-rails" = {
    version = "1.0.4";
    source = {
      type = "gem";
      sha256 = "1mcp0qb0r2bmajfch3a6z3087j5kp1rjbq9zsjmw707d0l0zwnr4";
    };
    dependencies = [
      "rails"
      "roadie"
    ];
  };
  "rspec-activemodel-mocks" = {
    version = "1.0.1";
    source = {
      type = "gem";
      sha256 = "0q8ssw2r79jipibz1zqqyffh5h8mk2jf79kgd2cabvr13j7lq7x5";
    };
    dependencies = [
      "activemodel"
      "activesupport"
      "rspec-mocks"
    ];
  };
  "rspec-collection_matchers" = {
    version = "1.1.2";
    source = {
      type = "gem";
      sha256 = "1z74ch9lwqc52d23cfg42zs0h419786a3b45gxbdai47h78h80mp";
    };
    dependencies = [
      "rspec-expectations"
    ];
  };
  "rspec-core" = {
    version = "3.2.1";
    source = {
      type = "gem";
      sha256 = "09abmq1pzy6sskwnlv4qff16xpw8wj1zm0g6b8rg9fnbckk8qp8s";
    };
    dependencies = [
      "rspec-support"
    ];
  };
  "rspec-expectations" = {
    version = "3.2.0";
    source = {
      type = "gem";
      sha256 = "08ba5hprb3kf849yylkxm9dd9lfazh7gapiqxy5lapwqxbqpa3ky";
    };
    dependencies = [
      "diff-lcs"
      "rspec-support"
    ];
  };
  "rspec-its" = {
    version = "1.2.0";
    source = {
      type = "gem";
      sha256 = "1pwphny5jawcm1hda3vs9pjv1cybaxy17dc1s75qd7drrvx697p3";
    };
    dependencies = [
      "rspec-core"
      "rspec-expectations"
    ];
  };
  "rspec-mocks" = {
    version = "3.2.1";
    source = {
      type = "gem";
      sha256 = "09yig1lwgxl8fsns71z3xhv7wkg7zvagydh37pvaqpw92dz55jv2";
    };
    dependencies = [
      "diff-lcs"
      "rspec-support"
    ];
  };
  "rspec-rails" = {
    version = "3.2.1";
    source = {
      type = "gem";
      sha256 = "1xjhn9l63310d56cns6h52h4mjj064x0i7bb3jm3a1jfabz0bhsk";
    };
    dependencies = [
      "actionpack"
      "activesupport"
      "railties"
      "rspec-core"
      "rspec-expectations"
      "rspec-mocks"
      "rspec-support"
    ];
  };
  "rspec-support" = {
    version = "3.2.2";
    source = {
      type = "gem";
      sha256 = "194zry5195ls2hni7r9824vqb5d3qfg4jb15fgj8glfy0rvw3zxl";
    };
  };
  "ruby-progressbar" = {
    version = "1.7.1";
    source = {
      type = "gem";
      sha256 = "0ymjkzsp0mlpidpc5awix8wxaq403j068qldsdz8x6k2gk67bdqc";
    };
  };
  "ruby_parser" = {
    version = "3.6.4";
    source = {
      type = "gem";
      sha256 = "0wnl5sp20g0vgx8sd4xi4chilhncpf6daw6rkrvy1bakk5rdgppl";
    };
    dependencies = [
      "sexp_processor"
    ];
  };
  "rubyzip" = {
    version = "1.1.7";
    source = {
      type = "gem";
      sha256 = "0cq1ckjhyzh97fm5xs899fjjy3szpdh0y4bc3kngdf2yy29prar4";
    };
  };
  "safe_yaml" = {
    version = "1.0.4";
    source = {
      type = "gem";
      sha256 = "1hly915584hyi9q9vgd968x2nsi5yag9jyf5kq60lwzi5scr7094";
    };
  };
  "sass" = {
    version = "3.4.12";
    source = {
      type = "gem";
      sha256 = "15s4ydzxkv1xn3zmkrp3xclf1hanikkw55l7ka7bypl9i547d441";
    };
  };
  "sass-rails" = {
    version = "5.0.1";
    source = {
      type = "gem";
      sha256 = "14nrfyq43fjpdahqm049gqybv1favnpd1w0jv429v350m1i0i0kk";
    };
    dependencies = [
      "railties"
      "sass"
      "sprockets"
      "sprockets-rails"
      "tilt"
    ];
  };
  "savon" = {
    version = "2.9.0";
    source = {
      type = "gem";
      sha256 = "0d38081m0ikvrm20xjshrlp6imghlydpl4s0098kk0qv5cs3i1g1";
    };
    dependencies = [
      "akami"
      "builder"
      "gyoku"
      "httpi"
      "nokogiri"
      "nori"
      "uuid"
      "wasabi"
    ];
  };
  "selenium-webdriver" = {
    version = "2.44.0";
    source = {
      type = "gem";
      sha256 = "06bm0c5cdskbcv27j60ff4cgxa5jwdvw2ys2sca9ycvyd4a5s44w";
    };
    dependencies = [
      "childprocess"
      "multi_json"
      "rubyzip"
      "websocket"
    ];
  };
  "sequenced" = {
    version = "2.0.0";
    source = {
      type = "gem";
      sha256 = "1w25dv3sbf7kk8mfy0bnlafakq5m07q2kfp0rl137l8iibdxf01k";
    };
    dependencies = [
      "activerecord"
      "activesupport"
    ];
  };
  "sexp_processor" = {
    version = "4.4.5";
    source = {
      type = "gem";
      sha256 = "0z7yz3w5im76wjzbszhh0p6ffcvwwlj47i9hb2308rhv3xv171xg";
    };
  };
  "shoulda-matchers" = {
    version = "2.8.0";
    source = {
      type = "gem";
      sha256 = "0d3ryqcsk1n9y35bx5wxnqbgw4m8b3c79isazdjnnbg8crdp72d0";
    };
    dependencies = [
      "activesupport"
    ];
  };
  "simple_form" = {
    version = "3.1.0";
    source = {
      type = "gem";
      sha256 = "1vw1pyshb4z7vgc90cw71zh6i8cx1wwzrjpxr1zkhl5xbmgb3j66";
    };
    dependencies = [
      "actionpack"
      "activemodel"
    ];
  };
  "simplecov" = {
    version = "0.9.2";
    source = {
      type = "gem";
      sha256 = "1a3wy9zlmfwl3f47cibnxyxrgfz16y6fmy0dj1vyidzyys4mvy12";
    };
    dependencies = [
      "docile"
      "multi_json"
      "simplecov-html"
    ];
  };
  "simplecov-html" = {
    version = "0.9.0";
    source = {
      type = "gem";
      sha256 = "0jv9pmpaxihrcsgcf6mgl3qg7rhf9scl5l2k67d768w9cz63xgvc";
    };
  };
  "slop" = {
    version = "3.6.0";
    source = {
      type = "gem";
      sha256 = "00w8g3j7k7kl8ri2cf1m58ckxk8rn350gp4chfscmgv6pq1spk3n";
    };
  };
  "spring" = {
    version = "1.3.2";
    source = {
      type = "gem";
      sha256 = "0hplgp19f2yhnj5z0p1br4xc455vq9qjrzya4znp80yc7k6z2k1d";
    };
  };
  "spring-commands-cucumber" = {
    version = "1.0.1";
    source = {
      type = "gem";
      sha256 = "0mw81gvms2svn4k4pc6ly7smkmf0j9r2xbf0d38vygbyhiwd1c9a";
    };
    dependencies = [
      "spring"
    ];
  };
  "spring-commands-rspec" = {
    version = "1.0.4";
    source = {
      type = "gem";
      sha256 = "0b0svpq3md1pjz5drpa5pxwg8nk48wrshq8lckim4x3nli7ya0k2";
    };
    dependencies = [
      "spring"
    ];
  };
  "sprockets" = {
    version = "2.12.3";
    source = {
      type = "gem";
      sha256 = "1bn2drr8bc2af359dkfraq0nm0p1pib634kvhwn5lvj3r4vllnn2";
    };
    dependencies = [
      "hike"
      "multi_json"
      "rack"
      "tilt"
    ];
  };
  "sprockets-rails" = {
    version = "2.2.4";
    source = {
      type = "gem";
      sha256 = "172cdg38cqsfgvrncjzj0kziz7kv6b1lx8pccd0blyphs25qf4gc";
    };
    dependencies = [
      "actionpack"
      "activesupport"
      "sprockets"
    ];
  };
  "systemu" = {
    version = "2.6.4";
    source = {
      type = "gem";
      sha256 = "16k94azpsy1r958r6ysk4ksnpp54rqmh5hyamad9kwc3lk83i32z";
    };
  };
  "thin" = {
    version = "1.6.3";
    source = {
      type = "gem";
      sha256 = "1m56aygh5rh8ncp3s2gnn8ghn5ibkk0bg6s3clmh1vzaasw2lj4i";
    };
    dependencies = [
      "daemons"
      "eventmachine"
      "rack"
    ];
  };
  "thor" = {
    version = "0.19.1";
    source = {
      type = "gem";
      sha256 = "08p5gx18yrbnwc6xc0mxvsfaxzgy2y9i78xq7ds0qmdm67q39y4z";
    };
  };
  "thread_safe" = {
    version = "0.3.4";
    source = {
      type = "gem";
      sha256 = "1cil2zcdzqkyr8zrwhlg7gywryg36j4mxlxw0h0x0j0wjym5nc8n";
    };
  };
  "tilt" = {
    version = "1.4.1";
    source = {
      type = "gem";
      sha256 = "00sr3yy7sbqaq7cb2d2kpycajxqf1b1wr1yy33z4bnzmqii0b0ir";
    };
  };
  "timecop" = {
    version = "0.7.3";
    source = {
      type = "gem";
      sha256 = "15gyqk89z9vc2w2yx1plcyscwncl1949y3y7m7dilikjy5hq84yj";
    };
  };
  "twitter-text" = {
    version = "1.11.0";
    source = {
      type = "gem";
      sha256 = "11xar5v35z5plhl1zlj3v73p3rqyb8yi22v9af7an44s4qgppsz4";
    };
    dependencies = [
      "unf"
    ];
  };
  "tzinfo" = {
    version = "1.2.2";
    source = {
      type = "gem";
      sha256 = "1c01p3kg6xvy1cgjnzdfq45fggbwish8krd0h864jvbpybyx7cgx";
    };
    dependencies = [
      "thread_safe"
    ];
  };
  "uglifier" = {
    version = "2.7.0";
    source = {
      type = "gem";
      sha256 = "1x1mnakx086l83a3alj690c6n8kfmb4bk243a6m6yz99s15gbxfq";
    };
    dependencies = [
      "execjs"
      "json"
    ];
  };
  "underscore-rails" = {
    version = "1.7.0";
    source = {
      type = "gem";
      sha256 = "0fwn3qfr2m98lnsqjzcvsdx75j5r5mrdwr9f9j1d3y03km2bbrk8";
    };
  };
  "unf" = {
    version = "0.1.4";
    source = {
      type = "gem";
      sha256 = "0bh2cf73i2ffh4fcpdn9ir4mhq8zi50ik0zqa1braahzadx536a9";
    };
    dependencies = [
      "unf_ext"
    ];
  };
  "unf_ext" = {
    version = "0.0.6";
    source = {
      type = "gem";
      sha256 = "07zbmkzcid6pzdqgla3456ipfdka7j1v4hsx1iaa8rbnllqbmkdg";
    };
  };
  "uuid" = {
    version = "2.3.7";
    source = {
      type = "gem";
      sha256 = "04q10an3v40zwjihvdwm23fw6vl39fbkhdiwfw78a51ym9airnlp";
    };
    dependencies = [
      "macaddr"
    ];
  };
  "warden" = {
    version = "1.2.3";
    source = {
      type = "gem";
      sha256 = "0ykzsgwml0pdqn6vdjjaix12gpcgn8b126z9fx7yq3r3bmdrwxlp";
    };
    dependencies = [
      "rack"
    ];
  };
  "wasabi" = {
    version = "3.3.0";
    source = {
      type = "gem";
      sha256 = "0llvm653gyvm1r76lsgndjbwdmsr0pa06r39g549pjbwbk7ba06q";
    };
    dependencies = [
      "httpi"
      "mime-types"
      "nokogiri"
    ];
  };
  "webmock" = {
    version = "1.20.4";
    source = {
      type = "gem";
      sha256 = "01cz13ybxbbvkpl21bcfv0p9ir8m2zcplx93ps01ma54p25z4mxr";
    };
    dependencies = [
      "addressable"
      "crack"
    ];
  };
  "websocket" = {
    version = "1.2.1";
    source = {
      type = "gem";
      sha256 = "17mf28xp6h4gglbn1606jjrhdz9r6kyb2pr603ckadsrx31wh9p6";
    };
  };
  "websocket-driver" = {
    version = "0.5.3";
    source = {
      type = "gem";
      sha256 = "02ss8qp49605gds8jdgzx84fckj9jf6gsg9c59fgr3v8ghnmnrnz";
    };
    dependencies = [
      "websocket-extensions"
    ];
  };
  "websocket-extensions" = {
    version = "0.1.2";
    source = {
      type = "gem";
      sha256 = "07qnsafl6203a2zclxl20hy4jq11c471cgvd0bj5r9fx1qqw06br";
    };
  };
  "with_advisory_lock" = {
    version = "3.0.0";
    source = {
      type = "gem";
      sha256 = "1hf1s398ah1ksnppz8hk4phi52gp9av09fjv1j5ch0sgd53x8wkp";
    };
    dependencies = [
      "activerecord"
      "thread_safe"
    ];
  };
  "xpath" = {
    version = "2.0.0";
    source = {
      type = "gem";
      sha256 = "04kcr127l34p7221z13blyl0dvh0bmxwx326j72idayri36a394w";
    };
    dependencies = [
      "nokogiri"
    ];
  };
}
