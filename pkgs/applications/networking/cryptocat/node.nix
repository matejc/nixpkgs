{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."abbrev"."1" =
    self.by-version."abbrev"."1.0.5";
  by-version."abbrev"."1.0.5" = self.buildNodePackage {
    name = "abbrev-1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/abbrev/-/abbrev-1.0.5.tgz";
      name = "abbrev-1.0.5.tgz";
      sha1 = "5d8257bd9ebe435e698b2fa431afde4fe7b10b03";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."argparse"."~ 0.1.11" =
    self.by-version."argparse"."0.1.16";
  by-version."argparse"."0.1.16" = self.buildNodePackage {
    name = "argparse-0.1.16";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/argparse/-/argparse-0.1.16.tgz";
      name = "argparse-0.1.16.tgz";
      sha1 = "cfd01e0fbba3d6caed049fbd758d40f65196f57c";
    };
    deps = {
      "underscore-1.7.0" = self.by-version."underscore"."1.7.0";
      "underscore.string-2.4.0" = self.by-version."underscore.string"."2.4.0";
    };
    peerDependencies = [];
  };
  by-spec."assertion-error"."1.0.0" =
    self.by-version."assertion-error"."1.0.0";
  by-version."assertion-error"."1.0.0" = self.buildNodePackage {
    name = "assertion-error-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assertion-error/-/assertion-error-1.0.0.tgz";
      name = "assertion-error-1.0.0.tgz";
      sha1 = "c7f85438fdd466bc7ca16ab90c81513797a5d23b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."async"."~0.1.22" =
    self.by-version."async"."0.1.22";
  by-version."async"."0.1.22" = self.buildNodePackage {
    name = "async-0.1.22";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.1.22.tgz";
      name = "async-0.1.22.tgz";
      sha1 = "0fc1aaa088a0e3ef0ebe2d8831bab0dcf8845061";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."balanced-match"."^0.2.0" =
    self.by-version."balanced-match"."0.2.0";
  by-version."balanced-match"."0.2.0" = self.buildNodePackage {
    name = "balanced-match-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/balanced-match/-/balanced-match-0.2.0.tgz";
      name = "balanced-match-0.2.0.tgz";
      sha1 = "38f6730c03aab6d5edbb52bd934885e756d71674";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.0";
  by-version."brace-expansion"."1.1.0" = self.buildNodePackage {
    name = "brace-expansion-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.0.tgz";
      name = "brace-expansion-1.1.0.tgz";
      sha1 = "c9b7d03c03f37bc704be100e522b40db8f6cfcd9";
    };
    deps = {
      "balanced-match-0.2.0" = self.by-version."balanced-match"."0.2.0";
      "concat-map-0.0.1" = self.by-version."concat-map"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."buffer-crc32"."0.2.1" =
    self.by-version."buffer-crc32"."0.2.1";
  by-version."buffer-crc32"."0.2.1" = self.buildNodePackage {
    name = "buffer-crc32-0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffer-crc32/-/buffer-crc32-0.2.1.tgz";
      name = "buffer-crc32-0.2.1.tgz";
      sha1 = "be3e5382fc02b6d6324956ac1af98aa98b08534c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."buster-core"."=0.6.4" =
    self.by-version."buster-core"."0.6.4";
  by-version."buster-core"."0.6.4" = self.buildNodePackage {
    name = "buster-core-0.6.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buster-core/-/buster-core-0.6.4.tgz";
      name = "buster-core-0.6.4.tgz";
      sha1 = "27bf6bad674244ea720f311d900a0ca1cb786050";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."buster-format"."~0.5" =
    self.by-version."buster-format"."0.5.6";
  by-version."buster-format"."0.5.6" = self.buildNodePackage {
    name = "buster-format-0.5.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buster-format/-/buster-format-0.5.6.tgz";
      name = "buster-format-0.5.6.tgz";
      sha1 = "2b86c322ecf5e1b0ae6e6e7905ebfcf387d2ab95";
    };
    deps = {
      "buster-core-0.6.4" = self.by-version."buster-core"."0.6.4";
    };
    peerDependencies = [];
  };
  by-spec."bytes"."0.2.1" =
    self.by-version."bytes"."0.2.1";
  by-version."bytes"."0.2.1" = self.buildNodePackage {
    name = "bytes-0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bytes/-/bytes-0.2.1.tgz";
      name = "bytes-0.2.1.tgz";
      sha1 = "555b08abcb063f8975905302523e4cd4ffdfdf31";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."chai"."1.8.1" =
    self.by-version."chai"."1.8.1";
  by-version."chai"."1.8.1" = self.buildNodePackage {
    name = "chai-1.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai/-/chai-1.8.1.tgz";
      name = "chai-1.8.1.tgz";
      sha1 = "cc77866d5e7ebca2bd75144b1edc370a88785f72";
    };
    deps = {
      "assertion-error-1.0.0" = self.by-version."assertion-error"."1.0.0";
      "deep-eql-0.1.3" = self.by-version."deep-eql"."0.1.3";
    };
    peerDependencies = [];
  };
  "chai" = self.by-version."chai"."1.8.1";
  by-spec."cli"."0.4.x" =
    self.by-version."cli"."0.4.5";
  by-version."cli"."0.4.5" = self.buildNodePackage {
    name = "cli-0.4.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli/-/cli-0.4.5.tgz";
      name = "cli-0.4.5.tgz";
      sha1 = "78f9485cd161b566e9a6c72d7170c4270e81db61";
    };
    deps = {
      "glob-5.0.0" = self.by-version."glob"."5.0.0";
    };
    peerDependencies = [];
  };
  by-spec."coffee-script"."~1.3.3" =
    self.by-version."coffee-script"."1.3.3";
  by-version."coffee-script"."1.3.3" = self.buildNodePackage {
    name = "coffee-script-1.3.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/coffee-script/-/coffee-script-1.3.3.tgz";
      name = "coffee-script-1.3.3.tgz";
      sha1 = "150d6b4cb522894369efed6a2101c20bc7f4a4f4";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."colors"."~0.6.0-1" =
    self.by-version."colors"."0.6.2";
  by-version."colors"."0.6.2" = self.buildNodePackage {
    name = "colors-0.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/colors/-/colors-0.6.2.tgz";
      name = "colors-0.6.2.tgz";
      sha1 = "2423fe6678ac0c5dae8852e5d0e5be08c997abcc";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."colors"."~0.6.2" =
    self.by-version."colors"."0.6.2";
  by-spec."commander"."0.6.1" =
    self.by-version."commander"."0.6.1";
  by-version."commander"."0.6.1" = self.buildNodePackage {
    name = "commander-0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-0.6.1.tgz";
      name = "commander-0.6.1.tgz";
      sha1 = "fa68a14f6a945d54dbbe50d8cdb3320e9e3b1a06";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."commander"."1.3.2" =
    self.by-version."commander"."1.3.2";
  by-version."commander"."1.3.2" = self.buildNodePackage {
    name = "commander-1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-1.3.2.tgz";
      name = "commander-1.3.2.tgz";
      sha1 = "8a8f30ec670a6fdd64af52f1914b907d79ead5b5";
    };
    deps = {
      "keypress-0.1.0" = self.by-version."keypress"."0.1.0";
    };
    peerDependencies = [];
  };
  by-spec."commander"."2.0.0" =
    self.by-version."commander"."2.0.0";
  by-version."commander"."2.0.0" = self.buildNodePackage {
    name = "commander-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.0.0.tgz";
      name = "commander-2.0.0.tgz";
      sha1 = "d1b86f901f8b64bd941bdeadaf924530393be928";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."concat-map"."0.0.1" =
    self.by-version."concat-map"."0.0.1";
  by-version."concat-map"."0.0.1" = self.buildNodePackage {
    name = "concat-map-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
      name = "concat-map-0.0.1.tgz";
      sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."connect"."2.11.0" =
    self.by-version."connect"."2.11.0";
  by-version."connect"."2.11.0" = self.buildNodePackage {
    name = "connect-2.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect/-/connect-2.11.0.tgz";
      name = "connect-2.11.0.tgz";
      sha1 = "9991ce09ff9b85d9ead27f9d41d0b2a2df2f9284";
    };
    deps = {
      "qs-0.6.5" = self.by-version."qs"."0.6.5";
      "cookie-signature-1.0.1" = self.by-version."cookie-signature"."1.0.1";
      "buffer-crc32-0.2.1" = self.by-version."buffer-crc32"."0.2.1";
      "cookie-0.1.0" = self.by-version."cookie"."0.1.0";
      "send-0.1.4" = self.by-version."send"."0.1.4";
      "bytes-0.2.1" = self.by-version."bytes"."0.2.1";
      "fresh-0.2.0" = self.by-version."fresh"."0.2.0";
      "pause-0.0.1" = self.by-version."pause"."0.0.1";
      "uid2-0.0.3" = self.by-version."uid2"."0.0.3";
      "debug-2.1.2" = self.by-version."debug"."2.1.2";
      "methods-0.0.1" = self.by-version."methods"."0.0.1";
      "raw-body-0.0.3" = self.by-version."raw-body"."0.0.3";
      "negotiator-0.3.0" = self.by-version."negotiator"."0.3.0";
      "multiparty-2.2.0" = self.by-version."multiparty"."2.2.0";
    };
    peerDependencies = [];
  };
  by-spec."console-browserify"."0.1.x" =
    self.by-version."console-browserify"."0.1.6";
  by-version."console-browserify"."0.1.6" = self.buildNodePackage {
    name = "console-browserify-0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/console-browserify/-/console-browserify-0.1.6.tgz";
      name = "console-browserify-0.1.6.tgz";
      sha1 = "d128a3c0bb88350eb5626c6e7c71a6f0fd48983c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."cookie"."0.1.0" =
    self.by-version."cookie"."0.1.0";
  by-version."cookie"."0.1.0" = self.buildNodePackage {
    name = "cookie-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie/-/cookie-0.1.0.tgz";
      name = "cookie-0.1.0.tgz";
      sha1 = "90eb469ddce905c866de687efc43131d8801f9d0";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."cookie-signature"."1.0.1" =
    self.by-version."cookie-signature"."1.0.1";
  by-version."cookie-signature"."1.0.1" = self.buildNodePackage {
    name = "cookie-signature-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.1.tgz";
      name = "cookie-signature-1.0.1.tgz";
      sha1 = "44e072148af01e6e8e24afbf12690d68ae698ecb";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.1";
  by-version."core-util-is"."1.0.1" = self.buildNodePackage {
    name = "core-util-is-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-util-is/-/core-util-is-1.0.1.tgz";
      name = "core-util-is-1.0.1.tgz";
      sha1 = "6b07085aef9a3ccac6ee53bf9d3df0c1521a5538";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."dateformat"."1.0.2-1.2.3" =
    self.by-version."dateformat"."1.0.2-1.2.3";
  by-version."dateformat"."1.0.2-1.2.3" = self.buildNodePackage {
    name = "dateformat-1.0.2-1.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dateformat/-/dateformat-1.0.2-1.2.3.tgz";
      name = "dateformat-1.0.2-1.2.3.tgz";
      sha1 = "b0220c02de98617433b72851cf47de3df2cdbee9";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."debug"."*" =
    self.by-version."debug"."2.1.2";
  by-version."debug"."2.1.2" = self.buildNodePackage {
    name = "debug-2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.1.2.tgz";
      name = "debug-2.1.2.tgz";
      sha1 = "d5853ec48011eafd9ec80a5c4733332c1e767a43";
    };
    deps = {
      "ms-0.7.0" = self.by-version."ms"."0.7.0";
    };
    peerDependencies = [];
  };
  by-spec."deep-eql"."0.1.3" =
    self.by-version."deep-eql"."0.1.3";
  by-version."deep-eql"."0.1.3" = self.buildNodePackage {
    name = "deep-eql-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-eql/-/deep-eql-0.1.3.tgz";
      name = "deep-eql-0.1.3.tgz";
      sha1 = "ef558acab8de25206cd713906d74e56930eb69f2";
    };
    deps = {
      "type-detect-0.1.1" = self.by-version."type-detect"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."diff"."1.0.7" =
    self.by-version."diff"."1.0.7";
  by-version."diff"."1.0.7" = self.buildNodePackage {
    name = "diff-1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/diff/-/diff-1.0.7.tgz";
      name = "diff-1.0.7.tgz";
      sha1 = "24bbb001c4a7d5522169e7cabdb2c2814ed91cf4";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."esprima"."~ 1.0.2" =
    self.by-version."esprima"."1.0.4";
  by-version."esprima"."1.0.4" = self.buildNodePackage {
    name = "esprima-1.0.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-1.0.4.tgz";
      name = "esprima-1.0.4.tgz";
      sha1 = "9f557e08fc3b4d26ece9dd34f8fbf476b62585ad";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."eventemitter2"."~0.4.13" =
    self.by-version."eventemitter2"."0.4.14";
  by-version."eventemitter2"."0.4.14" = self.buildNodePackage {
    name = "eventemitter2-0.4.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eventemitter2/-/eventemitter2-0.4.14.tgz";
      name = "eventemitter2-0.4.14.tgz";
      sha1 = "8f61b75cde012b2e9eb284d4545583b5643b61ab";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."eventemitter2"."~0.4.9" =
    self.by-version."eventemitter2"."0.4.14";
  by-spec."exit"."~0.1.1" =
    self.by-version."exit"."0.1.2";
  by-version."exit"."0.1.2" = self.buildNodePackage {
    name = "exit-0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/exit/-/exit-0.1.2.tgz";
      name = "exit-0.1.2.tgz";
      sha1 = "0632638f8d877cc82107d30a0fff1a17cba1cd0c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."express"."3.4.4" =
    self.by-version."express"."3.4.4";
  by-version."express"."3.4.4" = self.buildNodePackage {
    name = "express-3.4.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/express/-/express-3.4.4.tgz";
      name = "express-3.4.4.tgz";
      sha1 = "0b63ae626c96b71b78d13dfce079c10351635a86";
    };
    deps = {
      "connect-2.11.0" = self.by-version."connect"."2.11.0";
      "commander-1.3.2" = self.by-version."commander"."1.3.2";
      "range-parser-0.0.4" = self.by-version."range-parser"."0.0.4";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "cookie-0.1.0" = self.by-version."cookie"."0.1.0";
      "buffer-crc32-0.2.1" = self.by-version."buffer-crc32"."0.2.1";
      "fresh-0.2.0" = self.by-version."fresh"."0.2.0";
      "methods-0.1.0" = self.by-version."methods"."0.1.0";
      "send-0.1.4" = self.by-version."send"."0.1.4";
      "cookie-signature-1.0.1" = self.by-version."cookie-signature"."1.0.1";
      "debug-2.1.2" = self.by-version."debug"."2.1.2";
    };
    peerDependencies = [];
  };
  "express" = self.by-version."express"."3.4.4";
  by-spec."findup-sync"."~0.1.0" =
    self.by-version."findup-sync"."0.1.3";
  by-version."findup-sync"."0.1.3" = self.buildNodePackage {
    name = "findup-sync-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/findup-sync/-/findup-sync-0.1.3.tgz";
      name = "findup-sync-0.1.3.tgz";
      sha1 = "7f3e7a97b82392c653bf06589bd85190e93c3683";
    };
    deps = {
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "lodash-2.4.1" = self.by-version."lodash"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."findup-sync"."~0.1.2" =
    self.by-version."findup-sync"."0.1.3";
  by-spec."fresh"."0.2.0" =
    self.by-version."fresh"."0.2.0";
  by-version."fresh"."0.2.0" = self.buildNodePackage {
    name = "fresh-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fresh/-/fresh-0.2.0.tgz";
      name = "fresh-0.2.0.tgz";
      sha1 = "bfd9402cf3df12c4a4c310c79f99a3dde13d34a7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."getobject"."~0.1.0" =
    self.by-version."getobject"."0.1.0";
  by-version."getobject"."0.1.0" = self.buildNodePackage {
    name = "getobject-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/getobject/-/getobject-0.1.0.tgz";
      name = "getobject-0.1.0.tgz";
      sha1 = "047a449789fa160d018f5486ed91320b6ec7885c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."glob"."3.2.3" =
    self.by-version."glob"."3.2.3";
  by-version."glob"."3.2.3" = self.buildNodePackage {
    name = "glob-3.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-3.2.3.tgz";
      name = "glob-3.2.3.tgz";
      sha1 = "e313eeb249c7affaa5c475286b0e115b59839467";
    };
    deps = {
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    peerDependencies = [];
  };
  by-spec."glob".">= 3.1.4" =
    self.by-version."glob"."5.0.0";
  by-version."glob"."5.0.0" = self.buildNodePackage {
    name = "glob-5.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-5.0.0.tgz";
      name = "glob-5.0.0.tgz";
      sha1 = "bb00d4e340932eb101dc2a30e4127ddd51ed15ed";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.1" = self.by-version."minimatch"."2.0.1";
      "once-1.3.1" = self.by-version."once"."1.3.1";
    };
    peerDependencies = [];
  };
  by-spec."glob"."~3.1.21" =
    self.by-version."glob"."3.1.21";
  by-version."glob"."3.1.21" = self.buildNodePackage {
    name = "glob-3.1.21";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-3.1.21.tgz";
      name = "glob-3.1.21.tgz";
      sha1 = "d29e0a055dea5138f4d07ed40e8982e83c2066cd";
    };
    deps = {
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "graceful-fs-1.2.3" = self.by-version."graceful-fs"."1.2.3";
      "inherits-1.0.0" = self.by-version."inherits"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."glob"."~3.2.9" =
    self.by-version."glob"."3.2.11";
  by-version."glob"."3.2.11" = self.buildNodePackage {
    name = "glob-3.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-3.2.11.tgz";
      name = "glob-3.2.11.tgz";
      sha1 = "4a973f635b9190f715d10987d5c00fd2815ebe3d";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-0.3.0" = self.by-version."minimatch"."0.3.0";
    };
    peerDependencies = [];
  };
  by-spec."graceful-fs"."~1.1" =
    self.by-version."graceful-fs"."1.1.14";
  by-version."graceful-fs"."1.1.14" = self.buildNodePackage {
    name = "graceful-fs-1.1.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-1.1.14.tgz";
      name = "graceful-fs-1.1.14.tgz";
      sha1 = "07078db5f6377f6321fceaaedf497de124dc9465";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."graceful-fs"."~1.2.0" =
    self.by-version."graceful-fs"."1.2.3";
  by-version."graceful-fs"."1.2.3" = self.buildNodePackage {
    name = "graceful-fs-1.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-1.2.3.tgz";
      name = "graceful-fs-1.2.3.tgz";
      sha1 = "15a4806a57547cb2d2dbf27f42e89a8c3451b364";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."graceful-fs"."~2.0.0" =
    self.by-version."graceful-fs"."2.0.3";
  by-version."graceful-fs"."2.0.3" = self.buildNodePackage {
    name = "graceful-fs-2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-2.0.3.tgz";
      name = "graceful-fs-2.0.3.tgz";
      sha1 = "7cd2cdb228a4a3f36e95efa6cc142de7d1a136d0";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."growl"."1.7.x" =
    self.by-version."growl"."1.7.0";
  by-version."growl"."1.7.0" = self.buildNodePackage {
    name = "growl-1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/growl/-/growl-1.7.0.tgz";
      name = "growl-1.7.0.tgz";
      sha1 = "de2d66136d002e112ba70f3f10c31cf7c350b2da";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."grunt"."0.4.1" =
    self.by-version."grunt"."0.4.1";
  by-version."grunt"."0.4.1" = self.buildNodePackage {
    name = "grunt-0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt/-/grunt-0.4.1.tgz";
      name = "grunt-0.4.1.tgz";
      sha1 = "d5892e5680add9ed1befde9aa635cf46b8f49729";
    };
    deps = {
      "async-0.1.22" = self.by-version."async"."0.1.22";
      "coffee-script-1.3.3" = self.by-version."coffee-script"."1.3.3";
      "colors-0.6.2" = self.by-version."colors"."0.6.2";
      "dateformat-1.0.2-1.2.3" = self.by-version."dateformat"."1.0.2-1.2.3";
      "eventemitter2-0.4.14" = self.by-version."eventemitter2"."0.4.14";
      "findup-sync-0.1.3" = self.by-version."findup-sync"."0.1.3";
      "glob-3.1.21" = self.by-version."glob"."3.1.21";
      "hooker-0.2.3" = self.by-version."hooker"."0.2.3";
      "iconv-lite-0.2.11" = self.by-version."iconv-lite"."0.2.11";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "nopt-1.0.10" = self.by-version."nopt"."1.0.10";
      "rimraf-2.0.3" = self.by-version."rimraf"."2.0.3";
      "lodash-0.9.2" = self.by-version."lodash"."0.9.2";
      "underscore.string-2.2.1" = self.by-version."underscore.string"."2.2.1";
      "which-1.0.9" = self.by-version."which"."1.0.9";
      "js-yaml-2.0.5" = self.by-version."js-yaml"."2.0.5";
    };
    peerDependencies = [];
  };
  "grunt" = self.by-version."grunt"."0.4.1";
  by-spec."grunt"."~0.4.0" =
    self.by-version."grunt"."0.4.5";
  by-version."grunt"."0.4.5" = self.buildNodePackage {
    name = "grunt-0.4.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt/-/grunt-0.4.5.tgz";
      name = "grunt-0.4.5.tgz";
      sha1 = "56937cd5194324adff6d207631832a9d6ba4e7f0";
    };
    deps = {
      "async-0.1.22" = self.by-version."async"."0.1.22";
      "coffee-script-1.3.3" = self.by-version."coffee-script"."1.3.3";
      "colors-0.6.2" = self.by-version."colors"."0.6.2";
      "dateformat-1.0.2-1.2.3" = self.by-version."dateformat"."1.0.2-1.2.3";
      "eventemitter2-0.4.14" = self.by-version."eventemitter2"."0.4.14";
      "findup-sync-0.1.3" = self.by-version."findup-sync"."0.1.3";
      "glob-3.1.21" = self.by-version."glob"."3.1.21";
      "hooker-0.2.3" = self.by-version."hooker"."0.2.3";
      "iconv-lite-0.2.11" = self.by-version."iconv-lite"."0.2.11";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "nopt-1.0.10" = self.by-version."nopt"."1.0.10";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "lodash-0.9.2" = self.by-version."lodash"."0.9.2";
      "underscore.string-2.2.1" = self.by-version."underscore.string"."2.2.1";
      "which-1.0.9" = self.by-version."which"."1.0.9";
      "js-yaml-2.0.5" = self.by-version."js-yaml"."2.0.5";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
      "getobject-0.1.0" = self.by-version."getobject"."0.1.0";
      "grunt-legacy-util-0.2.0" = self.by-version."grunt-legacy-util"."0.2.0";
      "grunt-legacy-log-0.1.1" = self.by-version."grunt-legacy-log"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."grunt-contrib-clean"."~0.5.0" =
    self.by-version."grunt-contrib-clean"."0.5.0";
  by-version."grunt-contrib-clean"."0.5.0" = self.buildNodePackage {
    name = "grunt-contrib-clean-0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-contrib-clean/-/grunt-contrib-clean-0.5.0.tgz";
      name = "grunt-contrib-clean-0.5.0.tgz";
      sha1 = "f53dfdee0849b1c7b40e9ebbba69f48c4c6079c5";
    };
    deps = {
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
  };
  "grunt-contrib-clean" = self.by-version."grunt-contrib-clean"."0.5.0";
  by-spec."grunt-contrib-copy"."0.4.1" =
    self.by-version."grunt-contrib-copy"."0.4.1";
  by-version."grunt-contrib-copy"."0.4.1" = self.buildNodePackage {
    name = "grunt-contrib-copy-0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-contrib-copy/-/grunt-contrib-copy-0.4.1.tgz";
      name = "grunt-contrib-copy-0.4.1.tgz";
      sha1 = "f0753b40ae21bb706daefb0b299e03cdf5fa9d6e";
    };
    deps = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
  };
  "grunt-contrib-copy" = self.by-version."grunt-contrib-copy"."0.4.1";
  by-spec."grunt-contrib-jshint"."0.7.1" =
    self.by-version."grunt-contrib-jshint"."0.7.1";
  by-version."grunt-contrib-jshint"."0.7.1" = self.buildNodePackage {
    name = "grunt-contrib-jshint-0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-contrib-jshint/-/grunt-contrib-jshint-0.7.1.tgz";
      name = "grunt-contrib-jshint-0.7.1.tgz";
      sha1 = "b636e1100b5804c4be56ad88d8a574ef0637d97a";
    };
    deps = {
      "jshint-2.3.0" = self.by-version."jshint"."2.3.0";
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
  };
  "grunt-contrib-jshint" = self.by-version."grunt-contrib-jshint"."0.7.1";
  by-spec."grunt-legacy-log"."~0.1.0" =
    self.by-version."grunt-legacy-log"."0.1.1";
  by-version."grunt-legacy-log"."0.1.1" = self.buildNodePackage {
    name = "grunt-legacy-log-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-legacy-log/-/grunt-legacy-log-0.1.1.tgz";
      name = "grunt-legacy-log-0.1.1.tgz";
      sha1 = "d41f1a6abc9b0b1256a2b5ff02f4c3298dfcd57a";
    };
    deps = {
      "hooker-0.2.3" = self.by-version."hooker"."0.2.3";
      "lodash-2.4.1" = self.by-version."lodash"."2.4.1";
      "underscore.string-2.3.3" = self.by-version."underscore.string"."2.3.3";
      "colors-0.6.2" = self.by-version."colors"."0.6.2";
    };
    peerDependencies = [];
  };
  by-spec."grunt-legacy-util"."~0.2.0" =
    self.by-version."grunt-legacy-util"."0.2.0";
  by-version."grunt-legacy-util"."0.2.0" = self.buildNodePackage {
    name = "grunt-legacy-util-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-legacy-util/-/grunt-legacy-util-0.2.0.tgz";
      name = "grunt-legacy-util-0.2.0.tgz";
      sha1 = "93324884dbf7e37a9ff7c026dff451d94a9e554b";
    };
    deps = {
      "hooker-0.2.3" = self.by-version."hooker"."0.2.3";
      "async-0.1.22" = self.by-version."async"."0.1.22";
      "lodash-0.9.2" = self.by-version."lodash"."0.9.2";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
      "underscore.string-2.2.1" = self.by-version."underscore.string"."2.2.1";
      "getobject-0.1.0" = self.by-version."getobject"."0.1.0";
      "which-1.0.9" = self.by-version."which"."1.0.9";
    };
    peerDependencies = [];
  };
  by-spec."grunt-mkdir"."~0.1.1" =
    self.by-version."grunt-mkdir"."0.1.2";
  by-version."grunt-mkdir"."0.1.2" = self.buildNodePackage {
    name = "grunt-mkdir-0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-mkdir/-/grunt-mkdir-0.1.2.tgz";
      name = "grunt-mkdir-0.1.2.tgz";
      sha1 = "073dc2c9440b73c9bdbcceaca73cdf4d08e07241";
    };
    deps = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
  };
  "grunt-mkdir" = self.by-version."grunt-mkdir"."0.1.2";
  by-spec."grunt-mocha-test"."0.7.0" =
    self.by-version."grunt-mocha-test"."0.7.0";
  by-version."grunt-mocha-test"."0.7.0" = self.buildNodePackage {
    name = "grunt-mocha-test-0.7.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-mocha-test/-/grunt-mocha-test-0.7.0.tgz";
      name = "grunt-mocha-test-0.7.0.tgz";
      sha1 = "9a3c7f4283b24c178f068b2dd66890623e95eebb";
    };
    deps = {
      "mocha-1.13.0" = self.by-version."mocha"."1.13.0";
    };
    peerDependencies = [];
  };
  "grunt-mocha-test" = self.by-version."grunt-mocha-test"."0.7.0";
  by-spec."hooker"."~0.2.3" =
    self.by-version."hooker"."0.2.3";
  by-version."hooker"."0.2.3" = self.buildNodePackage {
    name = "hooker-0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hooker/-/hooker-0.2.3.tgz";
      name = "hooker-0.2.3.tgz";
      sha1 = "b834f723cc4a242aa65963459df6d984c5d3d959";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."iconv-lite"."~0.2.11" =
    self.by-version."iconv-lite"."0.2.11";
  by-version."iconv-lite"."0.2.11" = self.buildNodePackage {
    name = "iconv-lite-0.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/iconv-lite/-/iconv-lite-0.2.11.tgz";
      name = "iconv-lite-0.2.11.tgz";
      sha1 = "1ce60a3a57864a292d1321ff4609ca4bb965adc8";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."iconv-lite"."~0.2.5" =
    self.by-version."iconv-lite"."0.2.11";
  by-spec."inflight"."^1.0.4" =
    self.by-version."inflight"."1.0.4";
  by-version."inflight"."1.0.4" = self.buildNodePackage {
    name = "inflight-1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inflight/-/inflight-1.0.4.tgz";
      name = "inflight-1.0.4.tgz";
      sha1 = "6cbb4521ebd51ce0ec0a936bfd7657ef7e9b172a";
    };
    deps = {
      "once-1.3.1" = self.by-version."once"."1.3.1";
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."inherits"."1" =
    self.by-version."inherits"."1.0.0";
  by-version."inherits"."1.0.0" = self.buildNodePackage {
    name = "inherits-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherits/-/inherits-1.0.0.tgz";
      name = "inherits-1.0.0.tgz";
      sha1 = "38e1975285bf1f7ba9c84da102bb12771322ac48";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."inherits"."2" =
    self.by-version."inherits"."2.0.1";
  by-version."inherits"."2.0.1" = self.buildNodePackage {
    name = "inherits-2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
      name = "inherits-2.0.1.tgz";
      sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."isarray"."0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-version."isarray"."0.0.1" = self.buildNodePackage {
    name = "isarray-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
      name = "isarray-0.0.1.tgz";
      sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."jade"."0.26.3" =
    self.by-version."jade"."0.26.3";
  by-version."jade"."0.26.3" = self.buildNodePackage {
    name = "jade-0.26.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/jade/-/jade-0.26.3.tgz";
      name = "jade-0.26.3.tgz";
      sha1 = "8f10d7977d8d79f2f6ff862a81b0513ccb25686c";
    };
    deps = {
      "commander-0.6.1" = self.by-version."commander"."0.6.1";
      "mkdirp-0.3.0" = self.by-version."mkdirp"."0.3.0";
    };
    peerDependencies = [];
  };
  by-spec."js-yaml"."~2.0.2" =
    self.by-version."js-yaml"."2.0.5";
  by-version."js-yaml"."2.0.5" = self.buildNodePackage {
    name = "js-yaml-2.0.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-yaml/-/js-yaml-2.0.5.tgz";
      name = "js-yaml-2.0.5.tgz";
      sha1 = "a25ae6509999e97df278c6719da11bd0687743a8";
    };
    deps = {
      "argparse-0.1.16" = self.by-version."argparse"."0.1.16";
      "esprima-1.0.4" = self.by-version."esprima"."1.0.4";
    };
    peerDependencies = [];
  };
  by-spec."js-yaml"."~2.0.5" =
    self.by-version."js-yaml"."2.0.5";
  by-spec."jshint"."2.3.0" =
    self.by-version."jshint"."2.3.0";
  by-version."jshint"."2.3.0" = self.buildNodePackage {
    name = "jshint-2.3.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/jshint/-/jshint-2.3.0.tgz";
      name = "jshint-2.3.0.tgz";
      sha1 = "19504455a2c20c46ee183361eb87f3a1c0b7dc47";
    };
    deps = {
      "shelljs-0.1.4" = self.by-version."shelljs"."0.1.4";
      "underscore-1.4.4" = self.by-version."underscore"."1.4.4";
      "cli-0.4.5" = self.by-version."cli"."0.4.5";
      "minimatch-0.4.0" = self.by-version."minimatch"."0.4.0";
      "console-browserify-0.1.6" = self.by-version."console-browserify"."0.1.6";
    };
    peerDependencies = [];
  };
  "jshint" = self.by-version."jshint"."2.3.0";
  by-spec."jshint"."~2.3.0" =
    self.by-version."jshint"."2.3.0";
  by-spec."keypress"."0.1.x" =
    self.by-version."keypress"."0.1.0";
  by-version."keypress"."0.1.0" = self.buildNodePackage {
    name = "keypress-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/keypress/-/keypress-0.1.0.tgz";
      name = "keypress-0.1.0.tgz";
      sha1 = "4a3188d4291b66b4f65edb99f806aa9ae293592a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash"."2.3.0" =
    self.by-version."lodash"."2.3.0";
  by-version."lodash"."2.3.0" = self.buildNodePackage {
    name = "lodash-2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-2.3.0.tgz";
      name = "lodash-2.3.0.tgz";
      sha1 = "dfbdac99cf87a59a022c474730570d8716c267dd";
    };
    deps = {
    };
    peerDependencies = [];
  };
  "lodash" = self.by-version."lodash"."2.3.0";
  by-spec."lodash"."~0.9.0" =
    self.by-version."lodash"."0.9.2";
  by-version."lodash"."0.9.2" = self.buildNodePackage {
    name = "lodash-0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-0.9.2.tgz";
      name = "lodash-0.9.2.tgz";
      sha1 = "8f3499c5245d346d682e5b0d3b40767e09f1a92c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash"."~0.9.2" =
    self.by-version."lodash"."0.9.2";
  by-spec."lodash"."~2.4.1" =
    self.by-version."lodash"."2.4.1";
  by-version."lodash"."2.4.1" = self.buildNodePackage {
    name = "lodash-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-2.4.1.tgz";
      name = "lodash-2.4.1.tgz";
      sha1 = "5b7723034dda4d262e5a46fb2c58d7cc22f71420";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.5.0";
  by-version."lru-cache"."2.5.0" = self.buildNodePackage {
    name = "lru-cache-2.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.5.0.tgz";
      name = "lru-cache-2.5.0.tgz";
      sha1 = "d82388ae9c960becbea0c73bb9eb79b6c6ce9aeb";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."methods"."0.0.1" =
    self.by-version."methods"."0.0.1";
  by-version."methods"."0.0.1" = self.buildNodePackage {
    name = "methods-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/methods/-/methods-0.0.1.tgz";
      name = "methods-0.0.1.tgz";
      sha1 = "277c90f8bef39709645a8371c51c3b6c648e068c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."methods"."0.1.0" =
    self.by-version."methods"."0.1.0";
  by-version."methods"."0.1.0" = self.buildNodePackage {
    name = "methods-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/methods/-/methods-0.1.0.tgz";
      name = "methods-0.1.0.tgz";
      sha1 = "335d429eefd21b7bacf2e9c922a8d2bd14a30e4f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."mime"."~1.2.9" =
    self.by-version."mime"."1.2.11";
  by-version."mime"."1.2.11" = self.buildNodePackage {
    name = "mime-1.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.2.11.tgz";
      name = "mime-1.2.11.tgz";
      sha1 = "58203eed86e3a5ef17aed2b7d9ebd47f0a60dd10";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."minimatch"."0.3" =
    self.by-version."minimatch"."0.3.0";
  by-version."minimatch"."0.3.0" = self.buildNodePackage {
    name = "minimatch-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.3.0.tgz";
      name = "minimatch-0.3.0.tgz";
      sha1 = "275d8edaac4f1bb3326472089e7949c8394699dd";
    };
    deps = {
      "lru-cache-2.5.0" = self.by-version."lru-cache"."2.5.0";
      "sigmund-1.0.0" = self.by-version."sigmund"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."minimatch"."0.x.x" =
    self.by-version."minimatch"."0.4.0";
  by-version."minimatch"."0.4.0" = self.buildNodePackage {
    name = "minimatch-0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.4.0.tgz";
      name = "minimatch-0.4.0.tgz";
      sha1 = "bd2c7d060d2c8c8fd7cde7f1f2ed2d5b270fdb1b";
    };
    deps = {
      "lru-cache-2.5.0" = self.by-version."lru-cache"."2.5.0";
      "sigmund-1.0.0" = self.by-version."sigmund"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."minimatch"."^2.0.1" =
    self.by-version."minimatch"."2.0.1";
  by-version."minimatch"."2.0.1" = self.buildNodePackage {
    name = "minimatch-2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-2.0.1.tgz";
      name = "minimatch-2.0.1.tgz";
      sha1 = "6c3760b45f66ed1cd5803143ee8d372488f02c37";
    };
    deps = {
      "brace-expansion-1.1.0" = self.by-version."brace-expansion"."1.1.0";
    };
    peerDependencies = [];
  };
  by-spec."minimatch"."~0.2.11" =
    self.by-version."minimatch"."0.2.14";
  by-version."minimatch"."0.2.14" = self.buildNodePackage {
    name = "minimatch-0.2.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.2.14.tgz";
      name = "minimatch-0.2.14.tgz";
      sha1 = "c74e780574f63c6f9a090e90efbe6ef53a6a756a";
    };
    deps = {
      "lru-cache-2.5.0" = self.by-version."lru-cache"."2.5.0";
      "sigmund-1.0.0" = self.by-version."sigmund"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."minimatch"."~0.2.12" =
    self.by-version."minimatch"."0.2.14";
  by-spec."minimatch"."~0.2.6" =
    self.by-version."minimatch"."0.2.14";
  by-spec."mkdirp"."0.3.0" =
    self.by-version."mkdirp"."0.3.0";
  by-version."mkdirp"."0.3.0" = self.buildNodePackage {
    name = "mkdirp-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.3.0.tgz";
      name = "mkdirp-0.3.0.tgz";
      sha1 = "1bbf5ab1ba827af23575143490426455f481fe1e";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."mkdirp"."0.3.5" =
    self.by-version."mkdirp"."0.3.5";
  by-version."mkdirp"."0.3.5" = self.buildNodePackage {
    name = "mkdirp-0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
      name = "mkdirp-0.3.5.tgz";
      sha1 = "de3e5f8961c88c787ee1368df849ac4413eca8d7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."mocha"."1.14.0" =
    self.by-version."mocha"."1.14.0";
  by-version."mocha"."1.14.0" = self.buildNodePackage {
    name = "mocha-1.14.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mocha/-/mocha-1.14.0.tgz";
      name = "mocha-1.14.0.tgz";
      sha1 = "713db6dc5000191a9d0358195d0908790ecb6157";
    };
    deps = {
      "commander-2.0.0" = self.by-version."commander"."2.0.0";
      "growl-1.7.0" = self.by-version."growl"."1.7.0";
      "jade-0.26.3" = self.by-version."jade"."0.26.3";
      "diff-1.0.7" = self.by-version."diff"."1.0.7";
      "debug-2.1.2" = self.by-version."debug"."2.1.2";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "glob-3.2.3" = self.by-version."glob"."3.2.3";
    };
    peerDependencies = [];
  };
  "mocha" = self.by-version."mocha"."1.14.0";
  by-spec."mocha"."~1.13.0" =
    self.by-version."mocha"."1.13.0";
  by-version."mocha"."1.13.0" = self.buildNodePackage {
    name = "mocha-1.13.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mocha/-/mocha-1.13.0.tgz";
      name = "mocha-1.13.0.tgz";
      sha1 = "8d8fa4e310b94cc6efeb3ed26aeca96dea93307c";
    };
    deps = {
      "commander-0.6.1" = self.by-version."commander"."0.6.1";
      "growl-1.7.0" = self.by-version."growl"."1.7.0";
      "jade-0.26.3" = self.by-version."jade"."0.26.3";
      "diff-1.0.7" = self.by-version."diff"."1.0.7";
      "debug-2.1.2" = self.by-version."debug"."2.1.2";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "glob-3.2.3" = self.by-version."glob"."3.2.3";
    };
    peerDependencies = [];
  };
  by-spec."ms"."0.7.0" =
    self.by-version."ms"."0.7.0";
  by-version."ms"."0.7.0" = self.buildNodePackage {
    name = "ms-0.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.7.0.tgz";
      name = "ms-0.7.0.tgz";
      sha1 = "865be94c2e7397ad8a57da6a633a6e2f30798b83";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."multiparty"."2.2.0" =
    self.by-version."multiparty"."2.2.0";
  by-version."multiparty"."2.2.0" = self.buildNodePackage {
    name = "multiparty-2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/multiparty/-/multiparty-2.2.0.tgz";
      name = "multiparty-2.2.0.tgz";
      sha1 = "a567c2af000ad22dc8f2a653d91978ae1f5316f4";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "stream-counter-0.2.0" = self.by-version."stream-counter"."0.2.0";
    };
    peerDependencies = [];
  };
  by-spec."negotiator"."0.3.0" =
    self.by-version."negotiator"."0.3.0";
  by-version."negotiator"."0.3.0" = self.buildNodePackage {
    name = "negotiator-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/negotiator/-/negotiator-0.3.0.tgz";
      name = "negotiator-0.3.0.tgz";
      sha1 = "706d692efeddf574d57ea9fb1ab89a4fa7ee8f60";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."nopt"."~1.0.10" =
    self.by-version."nopt"."1.0.10";
  by-version."nopt"."1.0.10" = self.buildNodePackage {
    name = "nopt-1.0.10";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-1.0.10.tgz";
      name = "nopt-1.0.10.tgz";
      sha1 = "6ddd21bd2a31417b92727dd585f8a6f37608ebee";
    };
    deps = {
      "abbrev-1.0.5" = self.by-version."abbrev"."1.0.5";
    };
    peerDependencies = [];
  };
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.3.1";
  by-version."once"."1.3.1" = self.buildNodePackage {
    name = "once-1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.3.1.tgz";
      name = "once-1.3.1.tgz";
      sha1 = "f3f3e4da5b7d27b5c732969ee3e67e729457b31f";
    };
    deps = {
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."pause"."0.0.1" =
    self.by-version."pause"."0.0.1";
  by-version."pause"."0.0.1" = self.buildNodePackage {
    name = "pause-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pause/-/pause-0.0.1.tgz";
      name = "pause-0.0.1.tgz";
      sha1 = "1d408b3fdb76923b9543d96fb4c9dfd535d9cb5d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."qs"."0.6.5" =
    self.by-version."qs"."0.6.5";
  by-version."qs"."0.6.5" = self.buildNodePackage {
    name = "qs-0.6.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-0.6.5.tgz";
      name = "qs-0.6.5.tgz";
      sha1 = "294b268e4b0d4250f6dde19b3b8b34935dff14ef";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."range-parser"."0.0.4" =
    self.by-version."range-parser"."0.0.4";
  by-version."range-parser"."0.0.4" = self.buildNodePackage {
    name = "range-parser-0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/range-parser/-/range-parser-0.0.4.tgz";
      name = "range-parser-0.0.4.tgz";
      sha1 = "c0427ffef51c10acba0782a46c9602e744ff620b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."raw-body"."0.0.3" =
    self.by-version."raw-body"."0.0.3";
  by-version."raw-body"."0.0.3" = self.buildNodePackage {
    name = "raw-body-0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/raw-body/-/raw-body-0.0.3.tgz";
      name = "raw-body-0.0.3.tgz";
      sha1 = "0cb3eb22ced1ca607d32dd8fd94a6eb383f3eb8a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."readable-stream"."~1.1.8" =
    self.by-version."readable-stream"."1.1.13";
  by-version."readable-stream"."1.1.13" = self.buildNodePackage {
    name = "readable-stream-1.1.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.1.13.tgz";
      name = "readable-stream-1.1.13.tgz";
      sha1 = "f6eef764f514c89e2b9e23146a75ba106756d23e";
    };
    deps = {
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    peerDependencies = [];
  };
  by-spec."readable-stream"."~1.1.9" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."rimraf"."~2.0.2" =
    self.by-version."rimraf"."2.0.3";
  by-version."rimraf"."2.0.3" = self.buildNodePackage {
    name = "rimraf-2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.0.3.tgz";
      name = "rimraf-2.0.3.tgz";
      sha1 = "f50a2965e7144e9afd998982f15df706730f56a9";
    };
    deps = {
      "graceful-fs-1.1.14" = self.by-version."graceful-fs"."1.1.14";
    };
    peerDependencies = [];
  };
  by-spec."rimraf"."~2.2.1" =
    self.by-version."rimraf"."2.2.8";
  by-version."rimraf"."2.2.8" = self.buildNodePackage {
    name = "rimraf-2.2.8";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
      name = "rimraf-2.2.8.tgz";
      sha1 = "e439be2aaee327321952730f99a8929e4fc50582";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."rimraf"."~2.2.8" =
    self.by-version."rimraf"."2.2.8";
  by-spec."send"."0.1.4" =
    self.by-version."send"."0.1.4";
  by-version."send"."0.1.4" = self.buildNodePackage {
    name = "send-0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/send/-/send-0.1.4.tgz";
      name = "send-0.1.4.tgz";
      sha1 = "be70d8d1be01de61821af13780b50345a4f71abd";
    };
    deps = {
      "debug-2.1.2" = self.by-version."debug"."2.1.2";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "fresh-0.2.0" = self.by-version."fresh"."0.2.0";
      "range-parser-0.0.4" = self.by-version."range-parser"."0.0.4";
    };
    peerDependencies = [];
  };
  by-spec."shelljs"."0.1.x" =
    self.by-version."shelljs"."0.1.4";
  by-version."shelljs"."0.1.4" = self.buildNodePackage {
    name = "shelljs-0.1.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/shelljs/-/shelljs-0.1.4.tgz";
      name = "shelljs-0.1.4.tgz";
      sha1 = "dfbbe78d56c3c0168d2fb79e10ecd1dbcb07ec0e";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."sigmund"."~1.0.0" =
    self.by-version."sigmund"."1.0.0";
  by-version."sigmund"."1.0.0" = self.buildNodePackage {
    name = "sigmund-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sigmund/-/sigmund-1.0.0.tgz";
      name = "sigmund-1.0.0.tgz";
      sha1 = "66a2b3a749ae8b5fb89efd4fcc01dc94fbe02296";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."sinon"."1.7.3" =
    self.by-version."sinon"."1.7.3";
  by-version."sinon"."1.7.3" = self.buildNodePackage {
    name = "sinon-1.7.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sinon/-/sinon-1.7.3.tgz";
      name = "sinon-1.7.3.tgz";
      sha1 = "7a69d69cd0294586c743254eeff1b583a50997f2";
    };
    deps = {
      "buster-format-0.5.6" = self.by-version."buster-format"."0.5.6";
    };
    peerDependencies = [];
  };
  "sinon" = self.by-version."sinon"."1.7.3";
  by-spec."stream-counter"."~0.2.0" =
    self.by-version."stream-counter"."0.2.0";
  by-version."stream-counter"."0.2.0" = self.buildNodePackage {
    name = "stream-counter-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-counter/-/stream-counter-0.2.0.tgz";
      name = "stream-counter-0.2.0.tgz";
      sha1 = "ded266556319c8b0e222812b9cf3b26fa7d947de";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    peerDependencies = [];
  };
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-version."string_decoder"."0.10.31" = self.buildNodePackage {
    name = "string_decoder-0.10.31";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
      name = "string_decoder-0.10.31.tgz";
      sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."type-detect"."0.1.1" =
    self.by-version."type-detect"."0.1.1";
  by-version."type-detect"."0.1.1" = self.buildNodePackage {
    name = "type-detect-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-detect/-/type-detect-0.1.1.tgz";
      name = "type-detect-0.1.1.tgz";
      sha1 = "0ba5ec2a885640e470ea4e8505971900dac58822";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."uid2"."0.0.3" =
    self.by-version."uid2"."0.0.3";
  by-version."uid2"."0.0.3" = self.buildNodePackage {
    name = "uid2-0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uid2/-/uid2-0.0.3.tgz";
      name = "uid2-0.0.3.tgz";
      sha1 = "483126e11774df2f71b8b639dcd799c376162b82";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."underscore"."1.4.x" =
    self.by-version."underscore"."1.4.4";
  by-version."underscore"."1.4.4" = self.buildNodePackage {
    name = "underscore-1.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.4.4.tgz";
      name = "underscore-1.4.4.tgz";
      sha1 = "61a6a32010622afa07963bf325203cf12239d604";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."underscore"."~1.7.0" =
    self.by-version."underscore"."1.7.0";
  by-version."underscore"."1.7.0" = self.buildNodePackage {
    name = "underscore-1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.7.0.tgz";
      name = "underscore-1.7.0.tgz";
      sha1 = "6bbaf0877500d36be34ecaa584e0db9fef035209";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."underscore.string"."~2.2.0rc" =
    self.by-version."underscore.string"."2.2.1";
  by-version."underscore.string"."2.2.1" = self.buildNodePackage {
    name = "underscore.string-2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore.string/-/underscore.string-2.2.1.tgz";
      name = "underscore.string-2.2.1.tgz";
      sha1 = "d7c0fa2af5d5a1a67f4253daee98132e733f0f19";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."underscore.string"."~2.2.1" =
    self.by-version."underscore.string"."2.2.1";
  by-spec."underscore.string"."~2.3.3" =
    self.by-version."underscore.string"."2.3.3";
  by-version."underscore.string"."2.3.3" = self.buildNodePackage {
    name = "underscore.string-2.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore.string/-/underscore.string-2.3.3.tgz";
      name = "underscore.string-2.3.3.tgz";
      sha1 = "71c08bf6b428b1133f37e78fa3a21c82f7329b0d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."underscore.string"."~2.4.0" =
    self.by-version."underscore.string"."2.4.0";
  by-version."underscore.string"."2.4.0" = self.buildNodePackage {
    name = "underscore.string-2.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore.string/-/underscore.string-2.4.0.tgz";
      name = "underscore.string-2.4.0.tgz";
      sha1 = "8cdd8fbac4e2d2ea1e7e2e8097c42f442280f85b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."which"."~1.0.5" =
    self.by-version."which"."1.0.9";
  by-version."which"."1.0.9" = self.buildNodePackage {
    name = "which-1.0.9";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/which/-/which-1.0.9.tgz";
      name = "which-1.0.9.tgz";
      sha1 = "460c1da0f810103d0321a9b633af9e575e64486f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."wrappy"."1" =
    self.by-version."wrappy"."1.0.1";
  by-version."wrappy"."1.0.1" = self.buildNodePackage {
    name = "wrappy-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wrappy/-/wrappy-1.0.1.tgz";
      name = "wrappy-1.0.1.tgz";
      sha1 = "1e65969965ccbc2db4548c6b84a6f2c5aedd4739";
    };
    deps = {
    };
    peerDependencies = [];
  };
}
