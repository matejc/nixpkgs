{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."accepts"."~1.2.9" =
    self.by-version."accepts"."1.2.9";
  by-version."accepts"."1.2.9" = self.buildNodePackage {
    name = "accepts-1.2.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/accepts/-/accepts-1.2.9.tgz";
      name = "accepts-1.2.9.tgz";
      sha1 = "76e9631d05e3ff192a34afb9389f7b3953ded001";
    };
    deps = {
      "mime-types-2.1.2" = self.by-version."mime-types"."2.1.2";
      "negotiator-0.5.3" = self.by-version."negotiator"."0.5.3";
    };
    peerDependencies = [];
  };
  by-spec."active-x-obfuscator"."0.0.1" =
    self.by-version."active-x-obfuscator"."0.0.1";
  by-version."active-x-obfuscator"."0.0.1" = self.buildNodePackage {
    name = "active-x-obfuscator-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/active-x-obfuscator/-/active-x-obfuscator-0.0.1.tgz";
      name = "active-x-obfuscator-0.0.1.tgz";
      sha1 = "089b89b37145ff1d9ec74af6530be5526cae1f1a";
    };
    deps = {
      "zeparser-0.0.5" = self.by-version."zeparser"."0.0.5";
    };
    peerDependencies = [];
  };
  by-spec."after"."0.8.1" =
    self.by-version."after"."0.8.1";
  by-version."after"."0.8.1" = self.buildNodePackage {
    name = "after-0.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/after/-/after-0.8.1.tgz";
      name = "after-0.8.1.tgz";
      sha1 = "ab5d4fb883f596816d3515f8f791c0af486dd627";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."amdefine".">=0.0.4" =
    self.by-version."amdefine"."0.1.1";
  by-version."amdefine"."0.1.1" = self.buildNodePackage {
    name = "amdefine-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/amdefine/-/amdefine-0.1.1.tgz";
      name = "amdefine-0.1.1.tgz";
      sha1 = "b5c75c532052dccd6a39c0064c772c8d57a06cd2";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."ansi-regex"."^0.2.0" =
    self.by-version."ansi-regex"."0.2.1";
  by-version."ansi-regex"."0.2.1" = self.buildNodePackage {
    name = "ansi-regex-0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-0.2.1.tgz";
      name = "ansi-regex-0.2.1.tgz";
      sha1 = "0d8e946967a3d8143f93e24e298525fc1b2235f9";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."ansi-regex"."^0.2.1" =
    self.by-version."ansi-regex"."0.2.1";
  by-spec."ansi-regex"."^1.0.0" =
    self.by-version."ansi-regex"."1.1.1";
  by-version."ansi-regex"."1.1.1" = self.buildNodePackage {
    name = "ansi-regex-1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-1.1.1.tgz";
      name = "ansi-regex-1.1.1.tgz";
      sha1 = "41c847194646375e6a1a5d10c3ca054ef9fc980d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."ansi-regex"."^1.1.0" =
    self.by-version."ansi-regex"."1.1.1";
  by-spec."ansi-styles"."^1.1.0" =
    self.by-version."ansi-styles"."1.1.0";
  by-version."ansi-styles"."1.1.0" = self.buildNodePackage {
    name = "ansi-styles-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-1.1.0.tgz";
      name = "ansi-styles-1.1.0.tgz";
      sha1 = "eaecbf66cd706882760b2f4691582b8f55d7a7de";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."ansi-styles"."^2.0.1" =
    self.by-version."ansi-styles"."2.0.1";
  by-version."ansi-styles"."2.0.1" = self.buildNodePackage {
    name = "ansi-styles-2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-2.0.1.tgz";
      name = "ansi-styles-2.0.1.tgz";
      sha1 = "b033f57f93e2d28adeb8bc11138fa13da0fd20a3";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."anymatch"."^1.1.0" =
    self.by-version."anymatch"."1.3.0";
  by-version."anymatch"."1.3.0" = self.buildNodePackage {
    name = "anymatch-1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/anymatch/-/anymatch-1.3.0.tgz";
      name = "anymatch-1.3.0.tgz";
      sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
    };
    deps = {
      "arrify-1.0.0" = self.by-version."arrify"."1.0.0";
      "micromatch-2.1.6" = self.by-version."micromatch"."2.1.6";
    };
    peerDependencies = [];
  };
  by-spec."archy"."^1.0.0" =
    self.by-version."archy"."1.0.0";
  by-version."archy"."1.0.0" = self.buildNodePackage {
    name = "archy-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/archy/-/archy-1.0.0.tgz";
      name = "archy-1.0.0.tgz";
      sha1 = "f9c8c13757cc1dd7bc379ac77b2c62a5c2868c40";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."arr-diff"."^1.0.1" =
    self.by-version."arr-diff"."1.0.1";
  by-version."arr-diff"."1.0.1" = self.buildNodePackage {
    name = "arr-diff-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arr-diff/-/arr-diff-1.0.1.tgz";
      name = "arr-diff-1.0.1.tgz";
      sha1 = "0b766ed5b26b242212febe9cbf2024a8d0349f6d";
    };
    deps = {
      "array-slice-0.2.3" = self.by-version."array-slice"."0.2.3";
    };
    peerDependencies = [];
  };
  by-spec."array-differ"."^0.1.0" =
    self.by-version."array-differ"."0.1.0";
  by-version."array-differ"."0.1.0" = self.buildNodePackage {
    name = "array-differ-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-differ/-/array-differ-0.1.0.tgz";
      name = "array-differ-0.1.0.tgz";
      sha1 = "12e2c9b706bed47c8b483b57e487473fb0861f3a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."array-differ"."^1.0.0" =
    self.by-version."array-differ"."1.0.0";
  by-version."array-differ"."1.0.0" = self.buildNodePackage {
    name = "array-differ-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-differ/-/array-differ-1.0.0.tgz";
      name = "array-differ-1.0.0.tgz";
      sha1 = "eff52e3758249d33be402b8bb8e564bb2b5d4031";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."array-slice"."^0.2.2" =
    self.by-version."array-slice"."0.2.3";
  by-version."array-slice"."0.2.3" = self.buildNodePackage {
    name = "array-slice-0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-slice/-/array-slice-0.2.3.tgz";
      name = "array-slice-0.2.3.tgz";
      sha1 = "dd3cfb80ed7973a75117cdac69b0b99ec86186f5";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."array-union"."^0.1.0" =
    self.by-version."array-union"."0.1.0";
  by-version."array-union"."0.1.0" = self.buildNodePackage {
    name = "array-union-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-union/-/array-union-0.1.0.tgz";
      name = "array-union-0.1.0.tgz";
      sha1 = "ede98088330665e699e1ebf0227cbc6034e627db";
    };
    deps = {
      "array-uniq-0.1.1" = self.by-version."array-uniq"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."array-uniq"."^0.1.0" =
    self.by-version."array-uniq"."0.1.1";
  by-version."array-uniq"."0.1.1" = self.buildNodePackage {
    name = "array-uniq-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-uniq/-/array-uniq-0.1.1.tgz";
      name = "array-uniq-0.1.1.tgz";
      sha1 = "5861f3ed4e4bb6175597a4e078e8aa78ebe958c7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."array-uniq"."^1.0.1" =
    self.by-version."array-uniq"."1.0.2";
  by-version."array-uniq"."1.0.2" = self.buildNodePackage {
    name = "array-uniq-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-uniq/-/array-uniq-1.0.2.tgz";
      name = "array-uniq-1.0.2.tgz";
      sha1 = "5fcc373920775723cfd64d65c64bef53bf9eba6d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."array-uniq"."^1.0.2" =
    self.by-version."array-uniq"."1.0.2";
  by-spec."arraybuffer.slice"."0.0.6" =
    self.by-version."arraybuffer.slice"."0.0.6";
  by-version."arraybuffer.slice"."0.0.6" = self.buildNodePackage {
    name = "arraybuffer.slice-0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arraybuffer.slice/-/arraybuffer.slice-0.0.6.tgz";
      name = "arraybuffer.slice-0.0.6.tgz";
      sha1 = "f33b2159f0532a3f3107a272c0ccfbd1ad2979ca";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."arrify"."^1.0.0" =
    self.by-version."arrify"."1.0.0";
  by-version."arrify"."1.0.0" = self.buildNodePackage {
    name = "arrify-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arrify/-/arrify-1.0.0.tgz";
      name = "arrify-1.0.0.tgz";
      sha1 = "d6c361518250802fa2147ea7fb67597128cb8c81";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."asn1"."0.1.11" =
    self.by-version."asn1"."0.1.11";
  by-version."asn1"."0.1.11" = self.buildNodePackage {
    name = "asn1-0.1.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asn1/-/asn1-0.1.11.tgz";
      name = "asn1-0.1.11.tgz";
      sha1 = "559be18376d08a4ec4dbe80877d27818639b2df7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."assert-plus"."^0.1.5" =
    self.by-version."assert-plus"."0.1.5";
  by-version."assert-plus"."0.1.5" = self.buildNodePackage {
    name = "assert-plus-0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assert-plus/-/assert-plus-0.1.5.tgz";
      name = "assert-plus-0.1.5.tgz";
      sha1 = "ee74009413002d84cec7219c6ac811812e723160";
    };
    deps = {
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
  by-spec."assertion-error"."^1.0.1" =
    self.by-version."assertion-error"."1.0.1";
  by-version."assertion-error"."1.0.1" = self.buildNodePackage {
    name = "assertion-error-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assertion-error/-/assertion-error-1.0.1.tgz";
      name = "assertion-error-1.0.1.tgz";
      sha1 = "35aaeec33097f11f42399ecadf33faccd27f5c4c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."async"."^0.9.0" =
    self.by-version."async"."0.9.2";
  by-version."async"."0.9.2" = self.buildNodePackage {
    name = "async-0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.9.2.tgz";
      name = "async-0.9.2.tgz";
      sha1 = "aea74d5e61c1f899613bf64bda66d4c78f2fd17d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  "async" = self.by-version."async"."0.9.2";
  by-spec."async"."^1.2.1" =
    self.by-version."async"."1.2.1";
  by-version."async"."1.2.1" = self.buildNodePackage {
    name = "async-1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-1.2.1.tgz";
      name = "async-1.2.1.tgz";
      sha1 = "a4816a17cd5ff516dfa2c7698a453369b9790de0";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."async"."~0.2.0" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.2.10.tgz";
      name = "async-0.2.10.tgz";
      sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."async"."~0.2.6" =
    self.by-version."async"."0.2.10";
  by-spec."async"."~0.2.9" =
    self.by-version."async"."0.2.10";
  by-spec."async"."~0.9.0" =
    self.by-version."async"."0.9.2";
  by-spec."async-each"."^0.1.5" =
    self.by-version."async-each"."0.1.6";
  by-version."async-each"."0.1.6" = self.buildNodePackage {
    name = "async-each-0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async-each/-/async-each-0.1.6.tgz";
      name = "async-each-0.1.6.tgz";
      sha1 = "b67e99edcddf96541e44af56290cd7d5c6e70439";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."aws-sign2"."~0.5.0" =
    self.by-version."aws-sign2"."0.5.0";
  by-version."aws-sign2"."0.5.0" = self.buildNodePackage {
    name = "aws-sign2-0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/aws-sign2/-/aws-sign2-0.5.0.tgz";
      name = "aws-sign2-0.5.0.tgz";
      sha1 = "c57103f7a17fc037f02d7c2e64b602ea223f7d63";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."backo2"."1.0.2" =
    self.by-version."backo2"."1.0.2";
  by-version."backo2"."1.0.2" = self.buildNodePackage {
    name = "backo2-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/backo2/-/backo2-1.0.2.tgz";
      name = "backo2-1.0.2.tgz";
      sha1 = "31ab1ac8b129363463e35b3ebb69f4dfcfba7947";
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
  by-spec."base64-arraybuffer"."0.1.2" =
    self.by-version."base64-arraybuffer"."0.1.2";
  by-version."base64-arraybuffer"."0.1.2" = self.buildNodePackage {
    name = "base64-arraybuffer-0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64-arraybuffer/-/base64-arraybuffer-0.1.2.tgz";
      name = "base64-arraybuffer-0.1.2.tgz";
      sha1 = "474df4a9f2da24e05df3158c3b1db3c3cd46a154";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."base64-url"."1.2.1" =
    self.by-version."base64-url"."1.2.1";
  by-version."base64-url"."1.2.1" = self.buildNodePackage {
    name = "base64-url-1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64-url/-/base64-url-1.2.1.tgz";
      name = "base64-url-1.2.1.tgz";
      sha1 = "199fd661702a0e7b7dcae6e0698bb089c52f6d78";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."base64id"."0.1.0" =
    self.by-version."base64id"."0.1.0";
  by-version."base64id"."0.1.0" = self.buildNodePackage {
    name = "base64id-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64id/-/base64id-0.1.0.tgz";
      name = "base64id-0.1.0.tgz";
      sha1 = "02ce0fdeee0cef4f40080e1e73e834f0b1bfce3f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."basic-auth"."~1.0.2" =
    self.by-version."basic-auth"."1.0.2";
  by-version."basic-auth"."1.0.2" = self.buildNodePackage {
    name = "basic-auth-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/basic-auth/-/basic-auth-1.0.2.tgz";
      name = "basic-auth-1.0.2.tgz";
      sha1 = "42900137fb0c91462d14b3739c14bf2bb624171d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."basic-auth-connect"."1.0.0" =
    self.by-version."basic-auth-connect"."1.0.0";
  by-version."basic-auth-connect"."1.0.0" = self.buildNodePackage {
    name = "basic-auth-connect-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/basic-auth-connect/-/basic-auth-connect-1.0.0.tgz";
      name = "basic-auth-connect-1.0.0.tgz";
      sha1 = "fdb0b43962ca7b40456a7c2bb48fe173da2d2122";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."batch"."0.5.2" =
    self.by-version."batch"."0.5.2";
  by-version."batch"."0.5.2" = self.buildNodePackage {
    name = "batch-0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/batch/-/batch-0.5.2.tgz";
      name = "batch-0.5.2.tgz";
      sha1 = "546543dbe32118c83c7c7ca33a1f5c5d5ea963e9";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."beeper"."^1.0.0" =
    self.by-version."beeper"."1.1.0";
  by-version."beeper"."1.1.0" = self.buildNodePackage {
    name = "beeper-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/beeper/-/beeper-1.1.0.tgz";
      name = "beeper-1.1.0.tgz";
      sha1 = "9ee6fc1ce7f54feaace7ce73588b056037866a2c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."benchmark"."1.0.0" =
    self.by-version."benchmark"."1.0.0";
  by-version."benchmark"."1.0.0" = self.buildNodePackage {
    name = "benchmark-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/benchmark/-/benchmark-1.0.0.tgz";
      name = "benchmark-1.0.0.tgz";
      sha1 = "2f1e2fa4c359f11122aa183082218e957e390c73";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."better-assert"."~1.0.0" =
    self.by-version."better-assert"."1.0.2";
  by-version."better-assert"."1.0.2" = self.buildNodePackage {
    name = "better-assert-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/better-assert/-/better-assert-1.0.2.tgz";
      name = "better-assert-1.0.2.tgz";
      sha1 = "40866b9e1b9e0b55b481894311e68faffaebc522";
    };
    deps = {
      "callsite-1.0.0" = self.by-version."callsite"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."binary-extensions"."^1.0.0" =
    self.by-version."binary-extensions"."1.3.1";
  by-version."binary-extensions"."1.3.1" = self.buildNodePackage {
    name = "binary-extensions-1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binary-extensions/-/binary-extensions-1.3.1.tgz";
      name = "binary-extensions-1.3.1.tgz";
      sha1 = "32dd9ed2a7c69acec56f77f6cd80df043f78777a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."binaryextensions"."~1.0.0" =
    self.by-version."binaryextensions"."1.0.0";
  by-version."binaryextensions"."1.0.0" = self.buildNodePackage {
    name = "binaryextensions-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binaryextensions/-/binaryextensions-1.0.0.tgz";
      name = "binaryextensions-1.0.0.tgz";
      sha1 = "b514de33e0e77bc27c235f77a2eafbe1f96d0357";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."bl"."~0.9.0" =
    self.by-version."bl"."0.9.4";
  by-version."bl"."0.9.4" = self.buildNodePackage {
    name = "bl-0.9.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-0.9.4.tgz";
      name = "bl-0.9.4.tgz";
      sha1 = "4702ddf72fbe0ecd82787c00c113aea1935ad0e7";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    peerDependencies = [];
  };
  by-spec."blob"."0.0.2" =
    self.by-version."blob"."0.0.2";
  by-version."blob"."0.0.2" = self.buildNodePackage {
    name = "blob-0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/blob/-/blob-0.0.2.tgz";
      name = "blob-0.0.2.tgz";
      sha1 = "b89562bd6994af95ba1e812155536333aa23cf24";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."bluebird"."^2.9.27" =
    self.by-version."bluebird"."2.9.30";
  by-version."bluebird"."2.9.30" = self.buildNodePackage {
    name = "bluebird-2.9.30";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bluebird/-/bluebird-2.9.30.tgz";
      name = "bluebird-2.9.30.tgz";
      sha1 = "edda875ec9aad1f29cf1f56d6e82fbab2b0df556";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."bluebird"."^2.9.30" =
    self.by-version."bluebird"."2.9.30";
  by-spec."body-parser"."^1.12.4" =
    self.by-version."body-parser"."1.13.1";
  by-version."body-parser"."1.13.1" = self.buildNodePackage {
    name = "body-parser-1.13.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/body-parser/-/body-parser-1.13.1.tgz";
      name = "body-parser-1.13.1.tgz";
      sha1 = "f07218bc2c4b5e36ca261557c9465481b29ecdcd";
    };
    deps = {
      "bytes-2.1.0" = self.by-version."bytes"."2.1.0";
      "content-type-1.0.1" = self.by-version."content-type"."1.0.1";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "iconv-lite-0.4.10" = self.by-version."iconv-lite"."0.4.10";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "qs-2.4.2" = self.by-version."qs"."2.4.2";
      "raw-body-2.1.1" = self.by-version."raw-body"."2.1.1";
      "type-is-1.6.3" = self.by-version."type-is"."1.6.3";
    };
    peerDependencies = [];
  };
  by-spec."body-parser"."~1.13.1" =
    self.by-version."body-parser"."1.13.1";
  by-spec."boom"."0.4.x" =
    self.by-version."boom"."0.4.2";
  by-version."boom"."0.4.2" = self.buildNodePackage {
    name = "boom-0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-0.4.2.tgz";
      name = "boom-0.4.2.tgz";
      sha1 = "7a636e9ded4efcefb19cef4947a3c67dfaee911b";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
    };
    peerDependencies = [];
  };
  by-spec."boom"."2.x.x" =
    self.by-version."boom"."2.8.0";
  by-version."boom"."2.8.0" = self.buildNodePackage {
    name = "boom-2.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-2.8.0.tgz";
      name = "boom-2.8.0.tgz";
      sha1 = "317bdfd47018fe7dd79b0e9da73efe244119fdf1";
    };
    deps = {
      "hoek-2.14.0" = self.by-version."hoek"."2.14.0";
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
  by-spec."braces"."^0.1.2" =
    self.by-version."braces"."0.1.5";
  by-version."braces"."0.1.5" = self.buildNodePackage {
    name = "braces-0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/braces/-/braces-0.1.5.tgz";
      name = "braces-0.1.5.tgz";
      sha1 = "c085711085291d8b75fdd74eab0f8597280711e6";
    };
    deps = {
      "expand-range-0.1.1" = self.by-version."expand-range"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."braces"."^1.8.0" =
    self.by-version."braces"."1.8.0";
  by-version."braces"."1.8.0" = self.buildNodePackage {
    name = "braces-1.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/braces/-/braces-1.8.0.tgz";
      name = "braces-1.8.0.tgz";
      sha1 = "3a4a005aae0391817c17b074dca8f08e6fc9e4c4";
    };
    deps = {
      "expand-range-1.8.1" = self.by-version."expand-range"."1.8.1";
      "preserve-0.2.0" = self.by-version."preserve"."0.2.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
    };
    peerDependencies = [];
  };
  by-spec."bufferstreams"."0.0.2" =
    self.by-version."bufferstreams"."0.0.2";
  by-version."bufferstreams"."0.0.2" = self.buildNodePackage {
    name = "bufferstreams-0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bufferstreams/-/bufferstreams-0.0.2.tgz";
      name = "bufferstreams-0.0.2.tgz";
      sha1 = "7ce8dff968bbac00b9e90158a2c41456f740abdd";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    peerDependencies = [];
  };
  by-spec."bytes"."2.1.0" =
    self.by-version."bytes"."2.1.0";
  by-version."bytes"."2.1.0" = self.buildNodePackage {
    name = "bytes-2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bytes/-/bytes-2.1.0.tgz";
      name = "bytes-2.1.0.tgz";
      sha1 = "ac93c410e2ffc9cc7cf4b464b38289067f5e47b4";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."bytes"."^0.3.0" =
    self.by-version."bytes"."0.3.0";
  by-version."bytes"."0.3.0" = self.buildNodePackage {
    name = "bytes-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bytes/-/bytes-0.3.0.tgz";
      name = "bytes-0.3.0.tgz";
      sha1 = "78e2e0e28c7f9c7b988ea8aee0db4d5fa9941935";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."callsite"."1.0.0" =
    self.by-version."callsite"."1.0.0";
  by-version."callsite"."1.0.0" = self.buildNodePackage {
    name = "callsite-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/callsite/-/callsite-1.0.0.tgz";
      name = "callsite-1.0.0.tgz";
      sha1 = "280398e5d664bd74038b6f0905153e6e8af1bc20";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."camelcase"."^1.0.1" =
    self.by-version."camelcase"."1.1.0";
  by-version."camelcase"."1.1.0" = self.buildNodePackage {
    name = "camelcase-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase/-/camelcase-1.1.0.tgz";
      name = "camelcase-1.1.0.tgz";
      sha1 = "953b25c3bc98671ee59a44cb9d542672da7331b9";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."camelcase-keys"."^1.0.0" =
    self.by-version."camelcase-keys"."1.0.0";
  by-version."camelcase-keys"."1.0.0" = self.buildNodePackage {
    name = "camelcase-keys-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase-keys/-/camelcase-keys-1.0.0.tgz";
      name = "camelcase-keys-1.0.0.tgz";
      sha1 = "bd1a11bf9b31a1ce493493a930de1a0baf4ad7ec";
    };
    deps = {
      "camelcase-1.1.0" = self.by-version."camelcase"."1.1.0";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."caseless"."~0.10.0" =
    self.by-version."caseless"."0.10.0";
  by-version."caseless"."0.10.0" = self.buildNodePackage {
    name = "caseless-0.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caseless/-/caseless-0.10.0.tgz";
      name = "caseless-0.10.0.tgz";
      sha1 = "ed6b2719adcd1fd18f58dc081c0f1a5b43963909";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."chai"."*" =
    self.by-version."chai"."3.0.0";
  by-version."chai"."3.0.0" = self.buildNodePackage {
    name = "chai-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai/-/chai-3.0.0.tgz";
      name = "chai-3.0.0.tgz";
      sha1 = "71bfd1034fc8c2d8c5053875bb38f59b2a6f1928";
    };
    deps = {
      "assertion-error-1.0.1" = self.by-version."assertion-error"."1.0.1";
      "deep-eql-0.1.3" = self.by-version."deep-eql"."0.1.3";
      "type-detect-1.0.0" = self.by-version."type-detect"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."chai".">= 1.7.0 < 3" =
    self.by-version."chai"."2.3.0";
  by-version."chai"."2.3.0" = self.buildNodePackage {
    name = "chai-2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai/-/chai-2.3.0.tgz";
      name = "chai-2.3.0.tgz";
      sha1 = "8a2f6a34748da801090fd73287b2aa739a4e909a";
    };
    deps = {
      "assertion-error-1.0.0" = self.by-version."assertion-error"."1.0.0";
      "deep-eql-0.1.3" = self.by-version."deep-eql"."0.1.3";
    };
    peerDependencies = [];
  };
  by-spec."chai".">=1.7.0 >=1.10.0-0 <2.0.0-0" =
    self.by-version."chai"."1.10.0";
  by-version."chai"."1.10.0" = self.buildNodePackage {
    name = "chai-1.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai/-/chai-1.10.0.tgz";
      name = "chai-1.10.0.tgz";
      sha1 = "e4031cc87654461a75943e5a35ab46eaf39c1eb9";
    };
    deps = {
      "assertion-error-1.0.0" = self.by-version."assertion-error"."1.0.0";
      "deep-eql-0.1.3" = self.by-version."deep-eql"."0.1.3";
    };
    peerDependencies = [];
  };
  by-spec."chai".">=1.9.2 <4" =
    self.by-version."chai"."3.0.0";
  by-spec."chai".">=1.9.2 >=1.7.0 >=1.10.0-0 <2.0.0-0" =
    self.by-version."chai"."1.10.0";
  by-spec."chai"."^1.10.0" =
    self.by-version."chai"."1.10.0";
  by-spec."chai"."~1.9.1" =
    self.by-version."chai"."1.9.2";
  by-version."chai"."1.9.2" = self.buildNodePackage {
    name = "chai-1.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai/-/chai-1.9.2.tgz";
      name = "chai-1.9.2.tgz";
      sha1 = "3f1a20f82b0b9d7437577d24d6f12b1a69d3b590";
    };
    deps = {
      "assertion-error-1.0.0" = self.by-version."assertion-error"."1.0.0";
      "deep-eql-0.1.3" = self.by-version."deep-eql"."0.1.3";
    };
    peerDependencies = [];
  };
  "chai" = self.by-version."chai"."1.9.2";
  by-spec."chai-as-promised"."^4.1.1" =
    self.by-version."chai-as-promised"."4.3.0";
  by-version."chai-as-promised"."4.3.0" = self.buildNodePackage {
    name = "chai-as-promised-4.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai-as-promised/-/chai-as-promised-4.3.0.tgz";
      name = "chai-as-promised-4.3.0.tgz";
      sha1 = "0fa861b0b31bfe6867f5e770f0f877be60ece5ee";
    };
    deps = {
    };
    peerDependencies = [
      self.by-version."chai"."2.3.0"];
  };
  "chai-as-promised" = self.by-version."chai-as-promised"."4.3.0";
  by-spec."chai-jquery"."^2.0.0" =
    self.by-version."chai-jquery"."2.0.0";
  by-version."chai-jquery"."2.0.0" = self.buildNodePackage {
    name = "chai-jquery-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai-jquery/-/chai-jquery-2.0.0.tgz";
      name = "chai-jquery-2.0.0.tgz";
      sha1 = "0f43042308dd746332bd98164aaef4a4f45ba167";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."chai-things"."^0.2.0" =
    self.by-version."chai-things"."0.2.0";
  by-version."chai-things"."0.2.0" = self.buildNodePackage {
    name = "chai-things-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai-things/-/chai-things-0.2.0.tgz";
      name = "chai-things-0.2.0.tgz";
      sha1 = "c55128378f9bb399e994f00052151984ed6ebe70";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."chalk"."*" =
    self.by-version."chalk"."1.0.0";
  by-version."chalk"."1.0.0" = self.buildNodePackage {
    name = "chalk-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-1.0.0.tgz";
      name = "chalk-1.0.0.tgz";
      sha1 = "b3cf4ed0ff5397c99c75b8f679db2f52831f96dc";
    };
    deps = {
      "ansi-styles-2.0.1" = self.by-version."ansi-styles"."2.0.1";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
      "has-ansi-1.0.3" = self.by-version."has-ansi"."1.0.3";
      "strip-ansi-2.0.1" = self.by-version."strip-ansi"."2.0.1";
      "supports-color-1.3.1" = self.by-version."supports-color"."1.3.1";
    };
    peerDependencies = [];
  };
  by-spec."chalk"."^0.5.0" =
    self.by-version."chalk"."0.5.1";
  by-version."chalk"."0.5.1" = self.buildNodePackage {
    name = "chalk-0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-0.5.1.tgz";
      name = "chalk-0.5.1.tgz";
      sha1 = "663b3a648b68b55d04690d49167aa837858f2174";
    };
    deps = {
      "ansi-styles-1.1.0" = self.by-version."ansi-styles"."1.1.0";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
      "has-ansi-0.1.0" = self.by-version."has-ansi"."0.1.0";
      "strip-ansi-0.3.0" = self.by-version."strip-ansi"."0.3.0";
      "supports-color-0.2.0" = self.by-version."supports-color"."0.2.0";
    };
    peerDependencies = [];
  };
  by-spec."chalk"."^1.0.0" =
    self.by-version."chalk"."1.0.0";
  by-spec."chokidar"."^1.0.1" =
    self.by-version."chokidar"."1.0.3";
  by-version."chokidar"."1.0.3" = self.buildNodePackage {
    name = "chokidar-1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chokidar/-/chokidar-1.0.3.tgz";
      name = "chokidar-1.0.3.tgz";
      sha1 = "ba63580caeb89bbdf869eab51bbca4f3ca441be8";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "arrify-1.0.0" = self.by-version."arrify"."1.0.0";
      "async-each-0.1.6" = self.by-version."async-each"."0.1.6";
      "glob-parent-1.2.0" = self.by-version."glob-parent"."1.2.0";
      "is-binary-path-1.0.1" = self.by-version."is-binary-path"."1.0.1";
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "readdirp-1.3.0" = self.by-version."readdirp"."1.3.0";
    };
    peerDependencies = [];
  };
  by-spec."clean-css"."2.2.x" =
    self.by-version."clean-css"."2.2.23";
  by-version."clean-css"."2.2.23" = self.buildNodePackage {
    name = "clean-css-2.2.23";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/clean-css/-/clean-css-2.2.23.tgz";
      name = "clean-css-2.2.23.tgz";
      sha1 = "0590b5478b516c4903edc2d89bd3fdbdd286328c";
    };
    deps = {
      "commander-2.2.0" = self.by-version."commander"."2.2.0";
    };
    peerDependencies = [];
  };
  by-spec."clean-css"."~3.0.4" =
    self.by-version."clean-css"."3.0.10";
  by-version."clean-css"."3.0.10" = self.buildNodePackage {
    name = "clean-css-3.0.10";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/clean-css/-/clean-css-3.0.10.tgz";
      name = "clean-css-3.0.10.tgz";
      sha1 = "d477b381baa41f759a829d51f9cb380db90d626e";
    };
    deps = {
      "commander-2.5.1" = self.by-version."commander"."2.5.1";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    peerDependencies = [];
  };
  by-spec."clone"."^0.2.0" =
    self.by-version."clone"."0.2.0";
  by-version."clone"."0.2.0" = self.buildNodePackage {
    name = "clone-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/clone/-/clone-0.2.0.tgz";
      name = "clone-0.2.0.tgz";
      sha1 = "c6126a90ad4f72dbf5acdb243cc37724fe93fc1f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."clone"."^1.0.0" =
    self.by-version."clone"."1.0.2";
  by-version."clone"."1.0.2" = self.buildNodePackage {
    name = "clone-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/clone/-/clone-1.0.2.tgz";
      name = "clone-1.0.2.tgz";
      sha1 = "260b7a99ebb1edfe247538175f783243cb19d149";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."clone"."~0.1.5" =
    self.by-version."clone"."0.1.19";
  by-version."clone"."0.1.19" = self.buildNodePackage {
    name = "clone-0.1.19";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/clone/-/clone-0.1.19.tgz";
      name = "clone-0.1.19.tgz";
      sha1 = "613fb68639b26a494ac53253e15b1a6bd88ada85";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."clone-stats"."^0.0.1" =
    self.by-version."clone-stats"."0.0.1";
  by-version."clone-stats"."0.0.1" = self.buildNodePackage {
    name = "clone-stats-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/clone-stats/-/clone-stats-0.0.1.tgz";
      name = "clone-stats-0.0.1.tgz";
      sha1 = "b88f94a82cf38b8791d58046ea4029ad88ca99d1";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."clone-stats"."~0.0.1" =
    self.by-version."clone-stats"."0.0.1";
  by-spec."colors"."0.x.x" =
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
  by-spec."colors"."^1.1.0" =
    self.by-version."colors"."1.1.2";
  by-version."colors"."1.1.2" = self.buildNodePackage {
    name = "colors-1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/colors/-/colors-1.1.2.tgz";
      name = "colors-1.1.2.tgz";
      sha1 = "168a4701756b6a7f51a12ce0c97bfa28c084ed63";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."combined-stream"."^1.0.3" =
    self.by-version."combined-stream"."1.0.5";
  by-version."combined-stream"."1.0.5" = self.buildNodePackage {
    name = "combined-stream-1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
      name = "combined-stream-1.0.5.tgz";
      sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
    };
    deps = {
      "delayed-stream-1.0.0" = self.by-version."delayed-stream"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."combined-stream"."~0.0.4" =
    self.by-version."combined-stream"."0.0.7";
  by-version."combined-stream"."0.0.7" = self.buildNodePackage {
    name = "combined-stream-0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-0.0.7.tgz";
      name = "combined-stream-0.0.7.tgz";
      sha1 = "0137e657baa5a7541c57ac37ac5fc07d73b4dc1f";
    };
    deps = {
      "delayed-stream-0.0.5" = self.by-version."delayed-stream"."0.0.5";
    };
    peerDependencies = [];
  };
  by-spec."combined-stream"."~1.0.1" =
    self.by-version."combined-stream"."1.0.5";
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
  by-spec."commander"."2.2.x" =
    self.by-version."commander"."2.2.0";
  by-version."commander"."2.2.0" = self.buildNodePackage {
    name = "commander-2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.2.0.tgz";
      name = "commander-2.2.0.tgz";
      sha1 = "175ad4b9317f3ff615f201c1e57224f55a3e91df";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."commander"."2.3.0" =
    self.by-version."commander"."2.3.0";
  by-version."commander"."2.3.0" = self.buildNodePackage {
    name = "commander-2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.3.0.tgz";
      name = "commander-2.3.0.tgz";
      sha1 = "fd430e889832ec353b9acd1de217c11cb3eef873";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."commander"."2.5.x" =
    self.by-version."commander"."2.5.1";
  by-version."commander"."2.5.1" = self.buildNodePackage {
    name = "commander-2.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.5.1.tgz";
      name = "commander-2.5.1.tgz";
      sha1 = "23c61f6e47be143cc02e7ad4bb1c47f5cd5a2883";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."commander"."^2.8.1" =
    self.by-version."commander"."2.8.1";
  by-version."commander"."2.8.1" = self.buildNodePackage {
    name = "commander-2.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.8.1.tgz";
      name = "commander-2.8.1.tgz";
      sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
    };
    deps = {
      "graceful-readlink-1.0.1" = self.by-version."graceful-readlink"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."commander"."~0.6.1" =
    self.by-version."commander"."0.6.1";
  by-spec."commander"."~2.1.0" =
    self.by-version."commander"."2.1.0";
  by-version."commander"."2.1.0" = self.buildNodePackage {
    name = "commander-2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.1.0.tgz";
      name = "commander-2.1.0.tgz";
      sha1 = "d121bbae860d9992a3d517ba96f56588e47c6781";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."component-bind"."1.0.0" =
    self.by-version."component-bind"."1.0.0";
  by-version."component-bind"."1.0.0" = self.buildNodePackage {
    name = "component-bind-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-bind/-/component-bind-1.0.0.tgz";
      name = "component-bind-1.0.0.tgz";
      sha1 = "00c608ab7dcd93897c0009651b1d3a8e1e73bbd1";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."component-emitter"."1.1.2" =
    self.by-version."component-emitter"."1.1.2";
  by-version."component-emitter"."1.1.2" = self.buildNodePackage {
    name = "component-emitter-1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-emitter/-/component-emitter-1.1.2.tgz";
      name = "component-emitter-1.1.2.tgz";
      sha1 = "296594f2753daa63996d2af08d15a95116c9aec3";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."component-inherit"."0.0.3" =
    self.by-version."component-inherit"."0.0.3";
  by-version."component-inherit"."0.0.3" = self.buildNodePackage {
    name = "component-inherit-0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-inherit/-/component-inherit-0.0.3.tgz";
      name = "component-inherit-0.0.3.tgz";
      sha1 = "645fc4adf58b72b649d5cae65135619db26ff143";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."compressible"."~2.0.3" =
    self.by-version."compressible"."2.0.3";
  by-version."compressible"."2.0.3" = self.buildNodePackage {
    name = "compressible-2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compressible/-/compressible-2.0.3.tgz";
      name = "compressible-2.0.3.tgz";
      sha1 = "046fe398c1c32ae5af1f4a601cf9ae4632bf2b78";
    };
    deps = {
      "mime-db-1.14.0" = self.by-version."mime-db"."1.14.0";
    };
    peerDependencies = [];
  };
  by-spec."compression"."~1.5.0" =
    self.by-version."compression"."1.5.0";
  by-version."compression"."1.5.0" = self.buildNodePackage {
    name = "compression-1.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compression/-/compression-1.5.0.tgz";
      name = "compression-1.5.0.tgz";
      sha1 = "ccc1a54788da1b3ad7729c49f6a00b3ac9adf47f";
    };
    deps = {
      "accepts-1.2.9" = self.by-version."accepts"."1.2.9";
      "bytes-2.1.0" = self.by-version."bytes"."2.1.0";
      "compressible-2.0.3" = self.by-version."compressible"."2.0.3";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "on-headers-1.0.0" = self.by-version."on-headers"."1.0.0";
      "vary-1.0.0" = self.by-version."vary"."1.0.0";
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
  by-spec."concat-with-sourcemaps"."^0.1.3" =
    self.by-version."concat-with-sourcemaps"."0.1.6";
  by-version."concat-with-sourcemaps"."0.1.6" = self.buildNodePackage {
    name = "concat-with-sourcemaps-0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-with-sourcemaps/-/concat-with-sourcemaps-0.1.6.tgz";
      name = "concat-with-sourcemaps-0.1.6.tgz";
      sha1 = "16e5ac864d15a207e7aadcff6005db93185812cd";
    };
    deps = {
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    peerDependencies = [];
  };
  by-spec."connect"."^2.29.2" =
    self.by-version."connect"."2.30.0";
  by-version."connect"."2.30.0" = self.buildNodePackage {
    name = "connect-2.30.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect/-/connect-2.30.0.tgz";
      name = "connect-2.30.0.tgz";
      sha1 = "a1c33f44d05021a4a5d95a6002170baac9ccf0ff";
    };
    deps = {
      "basic-auth-connect-1.0.0" = self.by-version."basic-auth-connect"."1.0.0";
      "body-parser-1.13.1" = self.by-version."body-parser"."1.13.1";
      "bytes-2.1.0" = self.by-version."bytes"."2.1.0";
      "cookie-0.1.3" = self.by-version."cookie"."0.1.3";
      "cookie-parser-1.3.5" = self.by-version."cookie-parser"."1.3.5";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
      "compression-1.5.0" = self.by-version."compression"."1.5.0";
      "connect-timeout-1.6.2" = self.by-version."connect-timeout"."1.6.2";
      "content-type-1.0.1" = self.by-version."content-type"."1.0.1";
      "csurf-1.8.3" = self.by-version."csurf"."1.8.3";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "errorhandler-1.4.0" = self.by-version."errorhandler"."1.4.0";
      "express-session-1.11.3" = self.by-version."express-session"."1.11.3";
      "finalhandler-0.4.0" = self.by-version."finalhandler"."0.4.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "method-override-2.3.3" = self.by-version."method-override"."2.3.3";
      "morgan-1.6.0" = self.by-version."morgan"."1.6.0";
      "multiparty-3.3.2" = self.by-version."multiparty"."3.3.2";
      "on-headers-1.0.0" = self.by-version."on-headers"."1.0.0";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "qs-2.4.2" = self.by-version."qs"."2.4.2";
      "response-time-2.3.1" = self.by-version."response-time"."2.3.1";
      "serve-favicon-2.3.0" = self.by-version."serve-favicon"."2.3.0";
      "serve-index-1.7.0" = self.by-version."serve-index"."1.7.0";
      "serve-static-1.10.0" = self.by-version."serve-static"."1.10.0";
      "type-is-1.6.3" = self.by-version."type-is"."1.6.3";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
      "vhost-3.0.0" = self.by-version."vhost"."3.0.0";
      "pause-0.0.1" = self.by-version."pause"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."connect"."^3.3.5" =
    self.by-version."connect"."3.4.0";
  by-version."connect"."3.4.0" = self.buildNodePackage {
    name = "connect-3.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect/-/connect-3.4.0.tgz";
      name = "connect-3.4.0.tgz";
      sha1 = "ee8789a3bd4604bfda39dbcf1d3bb482dfe6cf24";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "finalhandler-0.4.0" = self.by-version."finalhandler"."0.4.0";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."connect-timeout"."~1.6.2" =
    self.by-version."connect-timeout"."1.6.2";
  by-version."connect-timeout"."1.6.2" = self.buildNodePackage {
    name = "connect-timeout-1.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect-timeout/-/connect-timeout-1.6.2.tgz";
      name = "connect-timeout-1.6.2.tgz";
      sha1 = "de9a5ec61e33a12b6edaab7b5f062e98c599b88e";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
      "on-headers-1.0.0" = self.by-version."on-headers"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."content-type"."~1.0.1" =
    self.by-version."content-type"."1.0.1";
  by-version."content-type"."1.0.1" = self.buildNodePackage {
    name = "content-type-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/content-type/-/content-type-1.0.1.tgz";
      name = "content-type-1.0.1.tgz";
      sha1 = "a19d2247327dc038050ce622b7a154ec59c5e600";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."convert-source-map"."^0.4.0" =
    self.by-version."convert-source-map"."0.4.1";
  by-version."convert-source-map"."0.4.1" = self.buildNodePackage {
    name = "convert-source-map-0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/convert-source-map/-/convert-source-map-0.4.1.tgz";
      name = "convert-source-map-0.4.1.tgz";
      sha1 = "f919a0099fe31f80fc5a1d0eb303161b394070c7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."convert-source-map"."^0.4.1" =
    self.by-version."convert-source-map"."0.4.1";
  by-spec."cookie"."0.1.3" =
    self.by-version."cookie"."0.1.3";
  by-version."cookie"."0.1.3" = self.buildNodePackage {
    name = "cookie-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie/-/cookie-0.1.3.tgz";
      name = "cookie-0.1.3.tgz";
      sha1 = "e734a5c1417fce472d5aef82c381cabb64d1a435";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."cookie-parser"."~1.3.5" =
    self.by-version."cookie-parser"."1.3.5";
  by-version."cookie-parser"."1.3.5" = self.buildNodePackage {
    name = "cookie-parser-1.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie-parser/-/cookie-parser-1.3.5.tgz";
      name = "cookie-parser-1.3.5.tgz";
      sha1 = "9d755570fb5d17890771227a02314d9be7cf8356";
    };
    deps = {
      "cookie-0.1.3" = self.by-version."cookie"."0.1.3";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
    };
    peerDependencies = [];
  };
  by-spec."cookie-signature"."1.0.6" =
    self.by-version."cookie-signature"."1.0.6";
  by-version."cookie-signature"."1.0.6" = self.buildNodePackage {
    name = "cookie-signature-1.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
      name = "cookie-signature-1.0.6.tgz";
      sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."core-js"."^0.9.17" =
    self.by-version."core-js"."0.9.18";
  by-version."core-js"."0.9.18" = self.buildNodePackage {
    name = "core-js-0.9.18";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-js/-/core-js-0.9.18.tgz";
      name = "core-js-0.9.18.tgz";
      sha1 = "13f458e430232b0f4ec1f480da7c2f5288e9d095";
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
  by-spec."crc"."3.3.0" =
    self.by-version."crc"."3.3.0";
  by-version."crc"."3.3.0" = self.buildNodePackage {
    name = "crc-3.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/crc/-/crc-3.3.0.tgz";
      name = "crc-3.3.0.tgz";
      sha1 = "fa622e1bc388bf257309082d6b65200ce67090ba";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."cryptiles"."0.2.x" =
    self.by-version."cryptiles"."0.2.2";
  by-version."cryptiles"."0.2.2" = self.buildNodePackage {
    name = "cryptiles-0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cryptiles/-/cryptiles-0.2.2.tgz";
      name = "cryptiles-0.2.2.tgz";
      sha1 = "ed91ff1f17ad13d3748288594f8a48a0d26f325c";
    };
    deps = {
      "boom-0.4.2" = self.by-version."boom"."0.4.2";
    };
    peerDependencies = [];
  };
  by-spec."cryptiles"."2.x.x" =
    self.by-version."cryptiles"."2.0.4";
  by-version."cryptiles"."2.0.4" = self.buildNodePackage {
    name = "cryptiles-2.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cryptiles/-/cryptiles-2.0.4.tgz";
      name = "cryptiles-2.0.4.tgz";
      sha1 = "09ea1775b9e1c7de7e60a99d42ab6f08ce1a1285";
    };
    deps = {
      "boom-2.8.0" = self.by-version."boom"."2.8.0";
    };
    peerDependencies = [];
  };
  by-spec."csrf"."~3.0.0" =
    self.by-version."csrf"."3.0.0";
  by-version."csrf"."3.0.0" = self.buildNodePackage {
    name = "csrf-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/csrf/-/csrf-3.0.0.tgz";
      name = "csrf-3.0.0.tgz";
      sha1 = "4a4d34d3c1f8bef9d9b4c596a27efd60d932d83a";
    };
    deps = {
      "base64-url-1.2.1" = self.by-version."base64-url"."1.2.1";
      "rndm-1.1.0" = self.by-version."rndm"."1.1.0";
      "scmp-1.0.0" = self.by-version."scmp"."1.0.0";
      "uid-safe-2.0.0" = self.by-version."uid-safe"."2.0.0";
    };
    peerDependencies = [];
  };
  by-spec."csurf"."~1.8.3" =
    self.by-version."csurf"."1.8.3";
  by-version."csurf"."1.8.3" = self.buildNodePackage {
    name = "csurf-1.8.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/csurf/-/csurf-1.8.3.tgz";
      name = "csurf-1.8.3.tgz";
      sha1 = "23f2a13bf1d8fce1d0c996588394442cba86a56a";
    };
    deps = {
      "cookie-0.1.3" = self.by-version."cookie"."0.1.3";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
      "csrf-3.0.0" = self.by-version."csrf"."3.0.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
    };
    peerDependencies = [];
  };
  by-spec."ctype"."0.5.3" =
    self.by-version."ctype"."0.5.3";
  by-version."ctype"."0.5.3" = self.buildNodePackage {
    name = "ctype-0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ctype/-/ctype-0.5.3.tgz";
      name = "ctype-0.5.3.tgz";
      sha1 = "82c18c2461f74114ef16c135224ad0b9144ca12f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."d"."~0.1.1" =
    self.by-version."d"."0.1.1";
  by-version."d"."0.1.1" = self.buildNodePackage {
    name = "d-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/d/-/d-0.1.1.tgz";
      name = "d-0.1.1.tgz";
      sha1 = "da184c535d18d8ee7ba2aa229b914009fae11309";
    };
    deps = {
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
    };
    peerDependencies = [];
  };
  by-spec."dateformat"."^1.0.11" =
    self.by-version."dateformat"."1.0.11";
  by-version."dateformat"."1.0.11" = self.buildNodePackage {
    name = "dateformat-1.0.11";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/dateformat/-/dateformat-1.0.11.tgz";
      name = "dateformat-1.0.11.tgz";
      sha1 = "f27cbee7a012bbfb82ea051562d3977f6093dbb1";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "meow-3.3.0" = self.by-version."meow"."3.3.0";
    };
    peerDependencies = [];
  };
  by-spec."dateformat"."^1.0.7-1.2.3" =
    self.by-version."dateformat"."1.0.11";
  by-spec."debug"."0.7.4" =
    self.by-version."debug"."0.7.4";
  by-version."debug"."0.7.4" = self.buildNodePackage {
    name = "debug-0.7.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-0.7.4.tgz";
      name = "debug-0.7.4.tgz";
      sha1 = "06e1ea8082c2cb14e39806e22e2f6f757f92af39";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."debug"."1.0.2" =
    self.by-version."debug"."1.0.2";
  by-version."debug"."1.0.2" = self.buildNodePackage {
    name = "debug-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.2.tgz";
      name = "debug-1.0.2.tgz";
      sha1 = "3849591c10cce648476c3c7c2e2e3416db5963c4";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    peerDependencies = [];
  };
  by-spec."debug"."1.0.3" =
    self.by-version."debug"."1.0.3";
  by-version."debug"."1.0.3" = self.buildNodePackage {
    name = "debug-1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.3.tgz";
      name = "debug-1.0.3.tgz";
      sha1 = "fc8c6b2d6002804b4081c0208e0f6460ba1fa3e4";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    peerDependencies = [];
  };
  by-spec."debug"."1.0.4" =
    self.by-version."debug"."1.0.4";
  by-version."debug"."1.0.4" = self.buildNodePackage {
    name = "debug-1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.4.tgz";
      name = "debug-1.0.4.tgz";
      sha1 = "5b9c256bd54b6ec02283176fa8a0ede6d154cbf8";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    peerDependencies = [];
  };
  by-spec."debug"."2.0.0" =
    self.by-version."debug"."2.0.0";
  by-version."debug"."2.0.0" = self.buildNodePackage {
    name = "debug-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.0.0.tgz";
      name = "debug-2.0.0.tgz";
      sha1 = "89bd9df6732b51256bc6705342bba02ed12131ef";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    peerDependencies = [];
  };
  by-spec."debug"."2.1.0" =
    self.by-version."debug"."2.1.0";
  by-version."debug"."2.1.0" = self.buildNodePackage {
    name = "debug-2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.1.0.tgz";
      name = "debug-2.1.0.tgz";
      sha1 = "33ab915659d8c2cc8a41443d94d6ebd37697ed21";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    peerDependencies = [];
  };
  by-spec."debug"."^2.1.3" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
      name = "debug-2.2.0.tgz";
      sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
    };
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    peerDependencies = [];
  };
  by-spec."debug"."~2.2.0" =
    self.by-version."debug"."2.2.0";
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
  by-spec."deep-eql"."^0.1.3" =
    self.by-version."deep-eql"."0.1.3";
  by-spec."deep-equal"."*" =
    self.by-version."deep-equal"."1.0.0";
  by-version."deep-equal"."1.0.0" = self.buildNodePackage {
    name = "deep-equal-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-equal/-/deep-equal-1.0.0.tgz";
      name = "deep-equal-1.0.0.tgz";
      sha1 = "d4564f07d2f0ab3e46110bec16592abd7dc2e326";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."deepmerge".">=0.2.7 <0.3.0-0" =
    self.by-version."deepmerge"."0.2.10";
  by-version."deepmerge"."0.2.10" = self.buildNodePackage {
    name = "deepmerge-0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deepmerge/-/deepmerge-0.2.10.tgz";
      name = "deepmerge-0.2.10.tgz";
      sha1 = "8906bf9e525a4fbf1b203b2afcb4640249821219";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."defaults"."^1.0.0" =
    self.by-version."defaults"."1.0.2";
  by-version."defaults"."1.0.2" = self.buildNodePackage {
    name = "defaults-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/defaults/-/defaults-1.0.2.tgz";
      name = "defaults-1.0.2.tgz";
      sha1 = "6902e25aa047649a501e19ef9e98f3e8365c109a";
    };
    deps = {
      "clone-0.1.19" = self.by-version."clone"."0.1.19";
    };
    peerDependencies = [];
  };
  by-spec."delayed-stream"."0.0.5" =
    self.by-version."delayed-stream"."0.0.5";
  by-version."delayed-stream"."0.0.5" = self.buildNodePackage {
    name = "delayed-stream-0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-0.0.5.tgz";
      name = "delayed-stream-0.0.5.tgz";
      sha1 = "d4b1f43a93e8296dfe02694f4680bc37a313c73f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."delayed-stream"."~1.0.0" =
    self.by-version."delayed-stream"."1.0.0";
  by-version."delayed-stream"."1.0.0" = self.buildNodePackage {
    name = "delayed-stream-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
      name = "delayed-stream-1.0.0.tgz";
      sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."depd"."~1.0.1" =
    self.by-version."depd"."1.0.1";
  by-version."depd"."1.0.1" = self.buildNodePackage {
    name = "depd-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/depd/-/depd-1.0.1.tgz";
      name = "depd-1.0.1.tgz";
      sha1 = "80aec64c9d6d97e65cc2a9caa93c0aa6abf73aaa";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."deprecated"."^0.0.1" =
    self.by-version."deprecated"."0.0.1";
  by-version."deprecated"."0.0.1" = self.buildNodePackage {
    name = "deprecated-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deprecated/-/deprecated-0.0.1.tgz";
      name = "deprecated-0.0.1.tgz";
      sha1 = "f9c9af5464afa1e7a971458a8bdef2aa94d5bb19";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."destroy"."1.0.3" =
    self.by-version."destroy"."1.0.3";
  by-version."destroy"."1.0.3" = self.buildNodePackage {
    name = "destroy-1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/destroy/-/destroy-1.0.3.tgz";
      name = "destroy-1.0.3.tgz";
      sha1 = "b433b4724e71fd8551d9885174851c5fc377e2c9";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."di"."^0.0.1" =
    self.by-version."di"."0.0.1";
  by-version."di"."0.0.1" = self.buildNodePackage {
    name = "di-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/di/-/di-0.0.1.tgz";
      name = "di-0.0.1.tgz";
      sha1 = "806649326ceaa7caa3306d75d985ea2748ba913c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."diff"."1.4.0" =
    self.by-version."diff"."1.4.0";
  by-version."diff"."1.4.0" = self.buildNodePackage {
    name = "diff-1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/diff/-/diff-1.4.0.tgz";
      name = "diff-1.4.0.tgz";
      sha1 = "7f28d2eb9ee7b15a97efd89ce63dcfdaa3ccbabf";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."duplexer"."~0.1.1" =
    self.by-version."duplexer"."0.1.1";
  by-version."duplexer"."0.1.1" = self.buildNodePackage {
    name = "duplexer-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/duplexer/-/duplexer-0.1.1.tgz";
      name = "duplexer-0.1.1.tgz";
      sha1 = "ace6ff808c1ce66b57d1ebf97977acb02334cfc1";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."duplexer2"."0.0.2" =
    self.by-version."duplexer2"."0.0.2";
  by-version."duplexer2"."0.0.2" = self.buildNodePackage {
    name = "duplexer2-0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/duplexer2/-/duplexer2-0.0.2.tgz";
      name = "duplexer2-0.0.2.tgz";
      sha1 = "c614dcf67e2fb14995a91711e5a617e8a60a31db";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    peerDependencies = [];
  };
  by-spec."ee-first"."1.1.1" =
    self.by-version."ee-first"."1.1.1";
  by-version."ee-first"."1.1.1" = self.buildNodePackage {
    name = "ee-first-1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
      name = "ee-first-1.1.1.tgz";
      sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."end-of-stream"."~0.1.5" =
    self.by-version."end-of-stream"."0.1.5";
  by-version."end-of-stream"."0.1.5" = self.buildNodePackage {
    name = "end-of-stream-0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/end-of-stream/-/end-of-stream-0.1.5.tgz";
      name = "end-of-stream-0.1.5.tgz";
      sha1 = "8e177206c3c80837d85632e8b9359dfe8b2f6eaf";
    };
    deps = {
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    peerDependencies = [];
  };
  by-spec."engine.io"."1.5.1" =
    self.by-version."engine.io"."1.5.1";
  by-version."engine.io"."1.5.1" = self.buildNodePackage {
    name = "engine.io-1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io/-/engine.io-1.5.1.tgz";
      name = "engine.io-1.5.1.tgz";
      sha1 = "8f7a4b2aadf974b71ffd185cffe1e2bdf384ddfb";
    };
    deps = {
      "debug-1.0.3" = self.by-version."debug"."1.0.3";
      "ws-0.5.0" = self.by-version."ws"."0.5.0";
      "engine.io-parser-1.2.1" = self.by-version."engine.io-parser"."1.2.1";
      "base64id-0.1.0" = self.by-version."base64id"."0.1.0";
    };
    peerDependencies = [];
  };
  by-spec."engine.io-client"."1.5.1" =
    self.by-version."engine.io-client"."1.5.1";
  by-version."engine.io-client"."1.5.1" = self.buildNodePackage {
    name = "engine.io-client-1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io-client/-/engine.io-client-1.5.1.tgz";
      name = "engine.io-client-1.5.1.tgz";
      sha1 = "ecd0026d90b065169b9885960183f3d56b8da18e";
    };
    deps = {
      "has-cors-1.0.3" = self.by-version."has-cors"."1.0.3";
      "ws-0.4.31" = self.by-version."ws"."0.4.31";
      "xmlhttprequest-1.5.0" = self.by-version."xmlhttprequest"."1.5.0";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "engine.io-parser-1.2.1" = self.by-version."engine.io-parser"."1.2.1";
      "debug-1.0.4" = self.by-version."debug"."1.0.4";
      "parseuri-0.0.4" = self.by-version."parseuri"."0.0.4";
      "parsejson-0.0.1" = self.by-version."parsejson"."0.0.1";
      "parseqs-0.0.2" = self.by-version."parseqs"."0.0.2";
      "component-inherit-0.0.3" = self.by-version."component-inherit"."0.0.3";
    };
    peerDependencies = [];
  };
  by-spec."engine.io-parser"."1.2.1" =
    self.by-version."engine.io-parser"."1.2.1";
  by-version."engine.io-parser"."1.2.1" = self.buildNodePackage {
    name = "engine.io-parser-1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io-parser/-/engine.io-parser-1.2.1.tgz";
      name = "engine.io-parser-1.2.1.tgz";
      sha1 = "4462a67d0c70a907c06db2e1de53791a86f5ab37";
    };
    deps = {
      "after-0.8.1" = self.by-version."after"."0.8.1";
      "arraybuffer.slice-0.0.6" = self.by-version."arraybuffer.slice"."0.0.6";
      "base64-arraybuffer-0.1.2" = self.by-version."base64-arraybuffer"."0.1.2";
      "blob-0.0.2" = self.by-version."blob"."0.0.2";
      "has-binary-0.1.5" = self.by-version."has-binary"."0.1.5";
      "utf8-2.0.0" = self.by-version."utf8"."2.0.0";
    };
    peerDependencies = [];
  };
  by-spec."errorhandler"."~1.4.0" =
    self.by-version."errorhandler"."1.4.0";
  by-version."errorhandler"."1.4.0" = self.buildNodePackage {
    name = "errorhandler-1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/errorhandler/-/errorhandler-1.4.0.tgz";
      name = "errorhandler-1.4.0.tgz";
      sha1 = "59de1a6219d8bf1ce6a9859996c23de07f5a8a47";
    };
    deps = {
      "accepts-1.2.9" = self.by-version."accepts"."1.2.9";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."es5-ext"."~0.10.2" =
    self.by-version."es5-ext"."0.10.7";
  by-version."es5-ext"."0.10.7" = self.buildNodePackage {
    name = "es5-ext-0.10.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es5-ext/-/es5-ext-0.10.7.tgz";
      name = "es5-ext-0.10.7.tgz";
      sha1 = "dfaea50721301042e2d89c1719d43493fa821656";
    };
    deps = {
      "es6-iterator-0.1.3" = self.by-version."es6-iterator"."0.1.3";
      "es6-symbol-2.0.1" = self.by-version."es6-symbol"."2.0.1";
    };
    peerDependencies = [];
  };
  by-spec."es5-ext"."~0.10.4" =
    self.by-version."es5-ext"."0.10.7";
  by-spec."es5-ext"."~0.10.5" =
    self.by-version."es5-ext"."0.10.7";
  by-spec."es5-ext"."~0.10.6" =
    self.by-version."es5-ext"."0.10.7";
  by-spec."es6-iterator"."~0.1.3" =
    self.by-version."es6-iterator"."0.1.3";
  by-version."es6-iterator"."0.1.3" = self.buildNodePackage {
    name = "es6-iterator-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es6-iterator/-/es6-iterator-0.1.3.tgz";
      name = "es6-iterator-0.1.3.tgz";
      sha1 = "d6f58b8c4fc413c249b4baa19768f8e4d7c8944e";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "es6-symbol-2.0.1" = self.by-version."es6-symbol"."2.0.1";
    };
    peerDependencies = [];
  };
  by-spec."es6-symbol"."~2.0.1" =
    self.by-version."es6-symbol"."2.0.1";
  by-version."es6-symbol"."2.0.1" = self.buildNodePackage {
    name = "es6-symbol-2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es6-symbol/-/es6-symbol-2.0.1.tgz";
      name = "es6-symbol-2.0.1.tgz";
      sha1 = "761b5c67cfd4f1d18afb234f691d678682cb3bf3";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
    };
    peerDependencies = [];
  };
  by-spec."es6-weak-map"."~0.1.2" =
    self.by-version."es6-weak-map"."0.1.4";
  by-version."es6-weak-map"."0.1.4" = self.buildNodePackage {
    name = "es6-weak-map-0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es6-weak-map/-/es6-weak-map-0.1.4.tgz";
      name = "es6-weak-map-0.1.4.tgz";
      sha1 = "706cef9e99aa236ba7766c239c8b9e286ea7d228";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "es6-iterator-0.1.3" = self.by-version."es6-iterator"."0.1.3";
      "es6-symbol-2.0.1" = self.by-version."es6-symbol"."2.0.1";
    };
    peerDependencies = [];
  };
  by-spec."escape-html"."1.0.2" =
    self.by-version."escape-html"."1.0.2";
  by-version."escape-html"."1.0.2" = self.buildNodePackage {
    name = "escape-html-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-html/-/escape-html-1.0.2.tgz";
      name = "escape-html-1.0.2.tgz";
      sha1 = "d77d32fa98e38c2f41ae85e9278e0e0e6ba1022c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."escape-string-regexp"."1.0.2" =
    self.by-version."escape-string-regexp"."1.0.2";
  by-version."escape-string-regexp"."1.0.2" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.2.tgz";
      name = "escape-string-regexp-1.0.2.tgz";
      sha1 = "4dbc2fe674e71949caf3fb2695ce7f2dc1d9a8d1";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."escape-string-regexp"."^1.0.0" =
    self.by-version."escape-string-regexp"."1.0.3";
  by-version."escape-string-regexp"."1.0.3" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.3.tgz";
      name = "escape-string-regexp-1.0.3.tgz";
      sha1 = "9e2d8b25bc2555c3336723750e03f099c2735bb5";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."escape-string-regexp"."^1.0.2" =
    self.by-version."escape-string-regexp"."1.0.3";
  by-spec."etag"."~1.7.0" =
    self.by-version."etag"."1.7.0";
  by-version."etag"."1.7.0" = self.buildNodePackage {
    name = "etag-1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/etag/-/etag-1.7.0.tgz";
      name = "etag-1.7.0.tgz";
      sha1 = "03d30b5f67dd6e632d2945d30d6652731a34d5d8";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."event-emitter"."~0.3.1" =
    self.by-version."event-emitter"."0.3.3";
  by-version."event-emitter"."0.3.3" = self.buildNodePackage {
    name = "event-emitter-0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/event-emitter/-/event-emitter-0.3.3.tgz";
      name = "event-emitter-0.3.3.tgz";
      sha1 = "df8e806541c68ab8ff20a79a1841b91abaa1bee4";
    };
    deps = {
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "d-0.1.1" = self.by-version."d"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."event-stream"."^3.1.0" =
    self.by-version."event-stream"."3.3.1";
  by-version."event-stream"."3.3.1" = self.buildNodePackage {
    name = "event-stream-3.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/event-stream/-/event-stream-3.3.1.tgz";
      name = "event-stream-3.3.1.tgz";
      sha1 = "b8cf6c00119181e688f335363daa7915ce890bdb";
    };
    deps = {
      "through-2.3.7" = self.by-version."through"."2.3.7";
      "duplexer-0.1.1" = self.by-version."duplexer"."0.1.1";
      "from-0.1.3" = self.by-version."from"."0.1.3";
      "map-stream-0.1.0" = self.by-version."map-stream"."0.1.0";
      "pause-stream-0.0.11" = self.by-version."pause-stream"."0.0.11";
      "split-0.3.3" = self.by-version."split"."0.3.3";
      "stream-combiner-0.0.4" = self.by-version."stream-combiner"."0.0.4";
    };
    peerDependencies = [];
  };
  by-spec."event-stream"."~3.0.18" =
    self.by-version."event-stream"."3.0.20";
  by-version."event-stream"."3.0.20" = self.buildNodePackage {
    name = "event-stream-3.0.20";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/event-stream/-/event-stream-3.0.20.tgz";
      name = "event-stream-3.0.20.tgz";
      sha1 = "038bbb2ea9ea90385b26fbc1854d0b539f2abea3";
    };
    deps = {
      "through-2.3.7" = self.by-version."through"."2.3.7";
      "duplexer-0.1.1" = self.by-version."duplexer"."0.1.1";
      "from-0.1.3" = self.by-version."from"."0.1.3";
      "map-stream-0.0.6" = self.by-version."map-stream"."0.0.6";
      "pause-stream-0.0.11" = self.by-version."pause-stream"."0.0.11";
      "split-0.2.10" = self.by-version."split"."0.2.10";
      "stream-combiner-0.0.4" = self.by-version."stream-combiner"."0.0.4";
    };
    peerDependencies = [];
  };
  by-spec."event-stream"."~3.0.20" =
    self.by-version."event-stream"."3.0.20";
  by-spec."event-stream"."~3.1.7" =
    self.by-version."event-stream"."3.1.7";
  by-version."event-stream"."3.1.7" = self.buildNodePackage {
    name = "event-stream-3.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/event-stream/-/event-stream-3.1.7.tgz";
      name = "event-stream-3.1.7.tgz";
      sha1 = "b4c540012d0fe1498420f3d8946008db6393c37a";
    };
    deps = {
      "through-2.3.7" = self.by-version."through"."2.3.7";
      "duplexer-0.1.1" = self.by-version."duplexer"."0.1.1";
      "from-0.1.3" = self.by-version."from"."0.1.3";
      "map-stream-0.1.0" = self.by-version."map-stream"."0.1.0";
      "pause-stream-0.0.11" = self.by-version."pause-stream"."0.0.11";
      "split-0.2.10" = self.by-version."split"."0.2.10";
      "stream-combiner-0.0.4" = self.by-version."stream-combiner"."0.0.4";
    };
    peerDependencies = [];
  };
  "event-stream" = self.by-version."event-stream"."3.1.7";
  by-spec."expand-braces"."^0.1.1" =
    self.by-version."expand-braces"."0.1.1";
  by-version."expand-braces"."0.1.1" = self.buildNodePackage {
    name = "expand-braces-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-braces/-/expand-braces-0.1.1.tgz";
      name = "expand-braces-0.1.1.tgz";
      sha1 = "83f2b897a16abebd406abad10949c2e03cae55d4";
    };
    deps = {
      "array-slice-0.2.3" = self.by-version."array-slice"."0.2.3";
      "array-uniq-1.0.2" = self.by-version."array-uniq"."1.0.2";
      "braces-0.1.5" = self.by-version."braces"."0.1.5";
    };
    peerDependencies = [];
  };
  by-spec."expand-brackets"."^0.1.1" =
    self.by-version."expand-brackets"."0.1.1";
  by-version."expand-brackets"."0.1.1" = self.buildNodePackage {
    name = "expand-brackets-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.1.tgz";
      name = "expand-brackets-0.1.1.tgz";
      sha1 = "e9a1a1a1bbbac19fbf065646fe63fe51f498821f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."expand-range"."^0.1.0" =
    self.by-version."expand-range"."0.1.1";
  by-version."expand-range"."0.1.1" = self.buildNodePackage {
    name = "expand-range-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-range/-/expand-range-0.1.1.tgz";
      name = "expand-range-0.1.1.tgz";
      sha1 = "4cb8eda0993ca56fa4f41fc42f3cbb4ccadff044";
    };
    deps = {
      "is-number-0.1.1" = self.by-version."is-number"."0.1.1";
      "repeat-string-0.2.2" = self.by-version."repeat-string"."0.2.2";
    };
    peerDependencies = [];
  };
  by-spec."expand-range"."^1.8.1" =
    self.by-version."expand-range"."1.8.1";
  by-version."expand-range"."1.8.1" = self.buildNodePackage {
    name = "expand-range-1.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-range/-/expand-range-1.8.1.tgz";
      name = "expand-range-1.8.1.tgz";
      sha1 = "acbd63e56efd9139722b755f099b9db5ac1f33f6";
    };
    deps = {
      "fill-range-2.2.2" = self.by-version."fill-range"."2.2.2";
    };
    peerDependencies = [];
  };
  by-spec."express-session"."~1.11.3" =
    self.by-version."express-session"."1.11.3";
  by-version."express-session"."1.11.3" = self.buildNodePackage {
    name = "express-session-1.11.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/express-session/-/express-session-1.11.3.tgz";
      name = "express-session-1.11.3.tgz";
      sha1 = "5cc98f3f5ff84ed835f91cbf0aabd0c7107400af";
    };
    deps = {
      "cookie-0.1.3" = self.by-version."cookie"."0.1.3";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
      "crc-3.3.0" = self.by-version."crc"."3.3.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "on-headers-1.0.0" = self.by-version."on-headers"."1.0.0";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "uid-safe-2.0.0" = self.by-version."uid-safe"."2.0.0";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."extend"."^2.0.1" =
    self.by-version."extend"."2.0.1";
  by-version."extend"."2.0.1" = self.buildNodePackage {
    name = "extend-2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extend/-/extend-2.0.1.tgz";
      name = "extend-2.0.1.tgz";
      sha1 = "1ee8010689e7395ff9448241c98652bc759a8260";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."extend"."~2.0.1" =
    self.by-version."extend"."2.0.1";
  by-spec."filename-regex"."^2.0.0" =
    self.by-version."filename-regex"."2.0.0";
  by-version."filename-regex"."2.0.0" = self.buildNodePackage {
    name = "filename-regex-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/filename-regex/-/filename-regex-2.0.0.tgz";
      name = "filename-regex-2.0.0.tgz";
      sha1 = "996e3e80479b98b9897f15a8a58b3d084e926775";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."fill-range"."^2.1.0" =
    self.by-version."fill-range"."2.2.2";
  by-version."fill-range"."2.2.2" = self.buildNodePackage {
    name = "fill-range-2.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fill-range/-/fill-range-2.2.2.tgz";
      name = "fill-range-2.2.2.tgz";
      sha1 = "2ad9d158a6a666f9fb8c9f9f05345dff68d45760";
    };
    deps = {
      "is-number-1.1.2" = self.by-version."is-number"."1.1.2";
      "isobject-1.0.0" = self.by-version."isobject"."1.0.0";
      "randomatic-1.1.0" = self.by-version."randomatic"."1.1.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.5.2" = self.by-version."repeat-string"."1.5.2";
    };
    peerDependencies = [];
  };
  by-spec."finalhandler"."0.4.0" =
    self.by-version."finalhandler"."0.4.0";
  by-version."finalhandler"."0.4.0" = self.buildNodePackage {
    name = "finalhandler-0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/finalhandler/-/finalhandler-0.4.0.tgz";
      name = "finalhandler-0.4.0.tgz";
      sha1 = "965a52d9e8d05d2b857548541fb89b53a2497d9b";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."find-index"."^0.1.1" =
    self.by-version."find-index"."0.1.1";
  by-version."find-index"."0.1.1" = self.buildNodePackage {
    name = "find-index-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/find-index/-/find-index-0.1.1.tgz";
      name = "find-index-0.1.1.tgz";
      sha1 = "675d358b2ca3892d795a1ab47232f8b6e2e0dde4";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."findup-sync"."^0.2.1" =
    self.by-version."findup-sync"."0.2.1";
  by-version."findup-sync"."0.2.1" = self.buildNodePackage {
    name = "findup-sync-0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/findup-sync/-/findup-sync-0.2.1.tgz";
      name = "findup-sync-0.2.1.tgz";
      sha1 = "e0a90a450075c49466ee513732057514b81e878c";
    };
    deps = {
      "glob-4.3.5" = self.by-version."glob"."4.3.5";
    };
    peerDependencies = [];
  };
  by-spec."first-chunk-stream"."^1.0.0" =
    self.by-version."first-chunk-stream"."1.0.0";
  by-version."first-chunk-stream"."1.0.0" = self.buildNodePackage {
    name = "first-chunk-stream-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/first-chunk-stream/-/first-chunk-stream-1.0.0.tgz";
      name = "first-chunk-stream-1.0.0.tgz";
      sha1 = "59bfb50cd905f60d7c394cd3d9acaab4e6ad934e";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."flagged-respawn"."^0.3.1" =
    self.by-version."flagged-respawn"."0.3.1";
  by-version."flagged-respawn"."0.3.1" = self.buildNodePackage {
    name = "flagged-respawn-0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/flagged-respawn/-/flagged-respawn-0.3.1.tgz";
      name = "flagged-respawn-0.3.1.tgz";
      sha1 = "397700925df6e12452202a71e89d89545fbbbe9d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."for-in"."^0.1.4" =
    self.by-version."for-in"."0.1.4";
  by-version."for-in"."0.1.4" = self.buildNodePackage {
    name = "for-in-0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/for-in/-/for-in-0.1.4.tgz";
      name = "for-in-0.1.4.tgz";
      sha1 = "9f5cf7b4ffc7e1ae6591a4e97b177aa59d70fb2e";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."for-own"."^0.1.1" =
    self.by-version."for-own"."0.1.3";
  by-version."for-own"."0.1.3" = self.buildNodePackage {
    name = "for-own-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/for-own/-/for-own-0.1.3.tgz";
      name = "for-own-0.1.3.tgz";
      sha1 = "606444cde77c2f0a11088169e2e354eaf56e74fe";
    };
    deps = {
      "for-in-0.1.4" = self.by-version."for-in"."0.1.4";
    };
    peerDependencies = [];
  };
  by-spec."forever-agent"."~0.5.0" =
    self.by-version."forever-agent"."0.5.2";
  by-version."forever-agent"."0.5.2" = self.buildNodePackage {
    name = "forever-agent-0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.5.2.tgz";
      name = "forever-agent-0.5.2.tgz";
      sha1 = "6d0e09c4921f94a27f63d3b49c5feff1ea4c5130";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."forever-agent"."~0.6.0" =
    self.by-version."forever-agent"."0.6.1";
  by-version."forever-agent"."0.6.1" = self.buildNodePackage {
    name = "forever-agent-0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
      name = "forever-agent-0.6.1.tgz";
      sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."form-data"."~0.1.0" =
    self.by-version."form-data"."0.1.4";
  by-version."form-data"."0.1.4" = self.buildNodePackage {
    name = "form-data-0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.1.4.tgz";
      name = "form-data-0.1.4.tgz";
      sha1 = "91abd788aba9702b1aabfa8bc01031a2ac9e3b12";
    };
    deps = {
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "async-0.9.2" = self.by-version."async"."0.9.2";
    };
    peerDependencies = [];
  };
  by-spec."form-data"."~1.0.0-rc1" =
    self.by-version."form-data"."1.0.0-rc1";
  by-version."form-data"."1.0.0-rc1" = self.buildNodePackage {
    name = "form-data-1.0.0-rc1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-1.0.0-rc1.tgz";
      name = "form-data-1.0.0-rc1.tgz";
      sha1 = "de5d87ff28439596f4f5500bff58d1244d54793a";
    };
    deps = {
      "async-1.2.1" = self.by-version."async"."1.2.1";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.2" = self.by-version."mime-types"."2.1.2";
    };
    peerDependencies = [];
  };
  by-spec."formatio"."1.1.1" =
    self.by-version."formatio"."1.1.1";
  by-version."formatio"."1.1.1" = self.buildNodePackage {
    name = "formatio-1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/formatio/-/formatio-1.1.1.tgz";
      name = "formatio-1.1.1.tgz";
      sha1 = "5ed3ccd636551097383465d996199100e86161e9";
    };
    deps = {
      "samsam-1.1.2" = self.by-version."samsam"."1.1.2";
    };
    peerDependencies = [];
  };
  by-spec."fresh"."0.3.0" =
    self.by-version."fresh"."0.3.0";
  by-version."fresh"."0.3.0" = self.buildNodePackage {
    name = "fresh-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fresh/-/fresh-0.3.0.tgz";
      name = "fresh-0.3.0.tgz";
      sha1 = "651f838e22424e7566de161d8358caa199f83d4f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."from"."~0" =
    self.by-version."from"."0.1.3";
  by-version."from"."0.1.3" = self.buildNodePackage {
    name = "from-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/from/-/from-0.1.3.tgz";
      name = "from-0.1.3.tgz";
      sha1 = "ef63ac2062ac32acf7862e0d40b44b896f22f3bc";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."fsevents"."^0.3.1" =
    self.by-version."fsevents"."0.3.6";
  by-version."fsevents"."0.3.6" = self.buildNodePackage {
    name = "fsevents-0.3.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fsevents/-/fsevents-0.3.6.tgz";
      name = "fsevents-0.3.6.tgz";
      sha1 = "03f029087b5388c756ef0d6707cf3656dba95c84";
    };
    deps = {
      "nan-1.8.4" = self.by-version."nan"."1.8.4";
    };
    peerDependencies = [];
  };
  by-spec."gaze"."^0.5.1" =
    self.by-version."gaze"."0.5.1";
  by-version."gaze"."0.5.1" = self.buildNodePackage {
    name = "gaze-0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gaze/-/gaze-0.5.1.tgz";
      name = "gaze-0.5.1.tgz";
      sha1 = "22e731078ef3e49d1c4ab1115ac091192051824c";
    };
    deps = {
      "globule-0.1.0" = self.by-version."globule"."0.1.0";
    };
    peerDependencies = [];
  };
  by-spec."generate-function"."^2.0.0" =
    self.by-version."generate-function"."2.0.0";
  by-version."generate-function"."2.0.0" = self.buildNodePackage {
    name = "generate-function-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/generate-function/-/generate-function-2.0.0.tgz";
      name = "generate-function-2.0.0.tgz";
      sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."generate-object-property"."^1.1.0" =
    self.by-version."generate-object-property"."1.2.0";
  by-version."generate-object-property"."1.2.0" = self.buildNodePackage {
    name = "generate-object-property-1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
      name = "generate-object-property-1.2.0.tgz";
      sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
    };
    deps = {
      "is-property-1.0.2" = self.by-version."is-property"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."get-stdin"."*" =
    self.by-version."get-stdin"."4.0.1";
  by-version."get-stdin"."4.0.1" = self.buildNodePackage {
    name = "get-stdin-4.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz";
      name = "get-stdin-4.0.1.tgz";
      sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."get-stdin"."^4.0.1" =
    self.by-version."get-stdin"."4.0.1";
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
  by-spec."glob"."^4.3.1" =
    self.by-version."glob"."4.5.3";
  by-version."glob"."4.5.3" = self.buildNodePackage {
    name = "glob-4.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-4.5.3.tgz";
      name = "glob-4.5.3.tgz";
      sha1 = "c6cb73d3226c1efef04de3c56d012f03377ee15f";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    peerDependencies = [];
  };
  by-spec."glob"."^4.4.2" =
    self.by-version."glob"."4.5.3";
  by-spec."glob"."^5.0.10" =
    self.by-version."glob"."5.0.11";
  by-version."glob"."5.0.11" = self.buildNodePackage {
    name = "glob-5.0.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-5.0.11.tgz";
      name = "glob-5.0.11.tgz";
      sha1 = "ce1756b16ce00d804d8a890ab0951bd07cf0d2ae";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."glob"."^5.0.6" =
    self.by-version."glob"."5.0.11";
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
  by-spec."glob"."~4.3.0" =
    self.by-version."glob"."4.3.5";
  by-version."glob"."4.3.5" = self.buildNodePackage {
    name = "glob-4.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-4.3.5.tgz";
      name = "glob-4.3.5.tgz";
      sha1 = "80fbb08ca540f238acce5d11d1e9bc41e75173d3";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    peerDependencies = [];
  };
  by-spec."glob-base"."^0.2.0" =
    self.by-version."glob-base"."0.2.0";
  by-version."glob-base"."0.2.0" = self.buildNodePackage {
    name = "glob-base-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-base/-/glob-base-0.2.0.tgz";
      name = "glob-base-0.2.0.tgz";
      sha1 = "59d2f38c3ba2860af149b6b174512a169e9f1b3d";
    };
    deps = {
      "glob-parent-1.2.0" = self.by-version."glob-parent"."1.2.0";
    };
    peerDependencies = [];
  };
  by-spec."glob-parent"."^1.0.0" =
    self.by-version."glob-parent"."1.2.0";
  by-version."glob-parent"."1.2.0" = self.buildNodePackage {
    name = "glob-parent-1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-parent/-/glob-parent-1.2.0.tgz";
      name = "glob-parent-1.2.0.tgz";
      sha1 = "8deffabf6317db5b0f775f553fac731ecf41ded5";
    };
    deps = {
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
    };
    peerDependencies = [];
  };
  by-spec."glob-parent"."^1.2.0" =
    self.by-version."glob-parent"."1.2.0";
  by-spec."glob-stream"."^3.1.5" =
    self.by-version."glob-stream"."3.1.18";
  by-version."glob-stream"."3.1.18" = self.buildNodePackage {
    name = "glob-stream-3.1.18";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-stream/-/glob-stream-3.1.18.tgz";
      name = "glob-stream-3.1.18.tgz";
      sha1 = "9170a5f12b790306fdfe598f313f8f7954fd143b";
    };
    deps = {
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "ordered-read-streams-0.1.0" = self.by-version."ordered-read-streams"."0.1.0";
      "glob2base-0.0.12" = self.by-version."glob2base"."0.0.12";
      "unique-stream-1.0.0" = self.by-version."unique-stream"."1.0.0";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
    };
    peerDependencies = [];
  };
  by-spec."glob-watcher"."^0.0.6" =
    self.by-version."glob-watcher"."0.0.6";
  by-version."glob-watcher"."0.0.6" = self.buildNodePackage {
    name = "glob-watcher-0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-watcher/-/glob-watcher-0.0.6.tgz";
      name = "glob-watcher-0.0.6.tgz";
      sha1 = "b95b4a8df74b39c83298b0c05c978b4d9a3b710b";
    };
    deps = {
      "gaze-0.5.1" = self.by-version."gaze"."0.5.1";
    };
    peerDependencies = [];
  };
  by-spec."glob2base"."^0.0.12" =
    self.by-version."glob2base"."0.0.12";
  by-version."glob2base"."0.0.12" = self.buildNodePackage {
    name = "glob2base-0.0.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob2base/-/glob2base-0.0.12.tgz";
      name = "glob2base-0.0.12.tgz";
      sha1 = "9d419b3e28f12e83a362164a277055922c9c0d56";
    };
    deps = {
      "find-index-0.1.1" = self.by-version."find-index"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."global"."https://github.com/component/global/archive/v2.0.1.tar.gz" =
    self.by-version."global"."2.0.1";
  by-version."global"."2.0.1" = self.buildNodePackage {
    name = "global-2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://github.com/component/global/archive/v2.0.1.tar.gz";
      name = "global-2.0.1.tgz";
      sha256 = "42be02b7148745447f6ba21137c972ca82d2cad92d30d63bd4fc310623901785";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."globule"."~0.1.0" =
    self.by-version."globule"."0.1.0";
  by-version."globule"."0.1.0" = self.buildNodePackage {
    name = "globule-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/globule/-/globule-0.1.0.tgz";
      name = "globule-0.1.0.tgz";
      sha1 = "d9c8edde1da79d125a151b79533b978676346ae5";
    };
    deps = {
      "lodash-1.0.2" = self.by-version."lodash"."1.0.2";
      "glob-3.1.21" = self.by-version."glob"."3.1.21";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
    };
    peerDependencies = [];
  };
  by-spec."graceful-fs"."^3.0.0" =
    self.by-version."graceful-fs"."3.0.8";
  by-version."graceful-fs"."3.0.8" = self.buildNodePackage {
    name = "graceful-fs-3.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-3.0.8.tgz";
      name = "graceful-fs-3.0.8.tgz";
      sha1 = "ce813e725fa82f7e6147d51c9a5ca68270551c22";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."graceful-fs"."^3.0.6" =
    self.by-version."graceful-fs"."3.0.8";
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
  by-spec."graceful-fs"."~3.0.2" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-readlink".">= 1.0.0" =
    self.by-version."graceful-readlink"."1.0.1";
  by-version."graceful-readlink"."1.0.1" = self.buildNodePackage {
    name = "graceful-readlink-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
      name = "graceful-readlink-1.0.1.tgz";
      sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."growl"."1.8.1" =
    self.by-version."growl"."1.8.1";
  by-version."growl"."1.8.1" = self.buildNodePackage {
    name = "growl-1.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/growl/-/growl-1.8.1.tgz";
      name = "growl-1.8.1.tgz";
      sha1 = "4b2dec8d907e93db336624dcec0183502f8c9428";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."gulp"."^3.8.7" =
    self.by-version."gulp"."3.9.0";
  by-version."gulp"."3.9.0" = self.buildNodePackage {
    name = "gulp-3.9.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp/-/gulp-3.9.0.tgz";
      name = "gulp-3.9.0.tgz";
      sha1 = "cf1fba4cb558bb8c6ae6c9613f583ae2620d214a";
    };
    deps = {
      "archy-1.0.0" = self.by-version."archy"."1.0.0";
      "chalk-1.0.0" = self.by-version."chalk"."1.0.0";
      "deprecated-0.0.1" = self.by-version."deprecated"."0.0.1";
      "gulp-util-3.0.6" = self.by-version."gulp-util"."3.0.6";
      "interpret-0.6.2" = self.by-version."interpret"."0.6.2";
      "liftoff-2.1.0" = self.by-version."liftoff"."2.1.0";
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
      "orchestrator-0.3.7" = self.by-version."orchestrator"."0.3.7";
      "pretty-hrtime-1.0.0" = self.by-version."pretty-hrtime"."1.0.0";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "tildify-1.1.0" = self.by-version."tildify"."1.1.0";
      "v8flags-2.0.9" = self.by-version."v8flags"."2.0.9";
      "vinyl-fs-0.3.13" = self.by-version."vinyl-fs"."0.3.13";
    };
    peerDependencies = [];
  };
  "gulp" = self.by-version."gulp"."3.9.0";
  by-spec."gulp-appcache"."0.0.4" =
    self.by-version."gulp-appcache"."0.0.4";
  by-version."gulp-appcache"."0.0.4" = self.buildNodePackage {
    name = "gulp-appcache-0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-appcache/-/gulp-appcache-0.0.4.tgz";
      name = "gulp-appcache-0.0.4.tgz";
      sha1 = "c73343f26ac0bf0601c5e464415145c9b3195070";
    };
    deps = {
      "event-stream-3.0.20" = self.by-version."event-stream"."3.0.20";
      "through-2.3.7" = self.by-version."through"."2.3.7";
      "gulp-util-2.2.20" = self.by-version."gulp-util"."2.2.20";
      "slash-0.1.3" = self.by-version."slash"."0.1.3";
    };
    peerDependencies = [];
  };
  "gulp-appcache" = self.by-version."gulp-appcache"."0.0.4";
  by-spec."gulp-clean"."~0.3.1" =
    self.by-version."gulp-clean"."0.3.1";
  by-version."gulp-clean"."0.3.1" = self.buildNodePackage {
    name = "gulp-clean-0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-clean/-/gulp-clean-0.3.1.tgz";
      name = "gulp-clean-0.3.1.tgz";
      sha1 = "52b08a6dfab27a81c67826eeb97affb4aa5f756d";
    };
    deps = {
      "rimraf-2.4.0" = self.by-version."rimraf"."2.4.0";
      "gulp-util-2.2.20" = self.by-version."gulp-util"."2.2.20";
      "through2-0.4.2" = self.by-version."through2"."0.4.2";
    };
    peerDependencies = [];
  };
  "gulp-clean" = self.by-version."gulp-clean"."0.3.1";
  by-spec."gulp-concat"."~2.3.4" =
    self.by-version."gulp-concat"."2.3.5";
  by-version."gulp-concat"."2.3.5" = self.buildNodePackage {
    name = "gulp-concat-2.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-concat/-/gulp-concat-2.3.5.tgz";
      name = "gulp-concat-2.3.5.tgz";
      sha1 = "2fe98cb3d78199744dfc0ecb295fb92bf8ad8eb4";
    };
    deps = {
      "concat-with-sourcemaps-0.1.6" = self.by-version."concat-with-sourcemaps"."0.1.6";
      "gulp-util-2.2.20" = self.by-version."gulp-util"."2.2.20";
      "through-2.3.7" = self.by-version."through"."2.3.7";
    };
    peerDependencies = [];
  };
  "gulp-concat" = self.by-version."gulp-concat"."2.3.5";
  by-spec."gulp-filter"."~1.0.0" =
    self.by-version."gulp-filter"."1.0.2";
  by-version."gulp-filter"."1.0.2" = self.buildNodePackage {
    name = "gulp-filter-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-filter/-/gulp-filter-1.0.2.tgz";
      name = "gulp-filter-1.0.2.tgz";
      sha1 = "f7d8c6f58fb5e200f11540fe0758d92c48b06bd7";
    };
    deps = {
      "gulp-util-3.0.6" = self.by-version."gulp-util"."3.0.6";
      "multimatch-0.3.0" = self.by-version."multimatch"."0.3.0";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
    };
    peerDependencies = [];
  };
  "gulp-filter" = self.by-version."gulp-filter"."1.0.2";
  by-spec."gulp-gzip"."0.0.8" =
    self.by-version."gulp-gzip"."0.0.8";
  by-version."gulp-gzip"."0.0.8" = self.buildNodePackage {
    name = "gulp-gzip-0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-gzip/-/gulp-gzip-0.0.8.tgz";
      name = "gulp-gzip-0.0.8.tgz";
      sha1 = "793badc74120c0e0969a56d75a3c6d79f2afc98b";
    };
    deps = {
      "bytes-0.3.0" = self.by-version."bytes"."0.3.0";
      "gulp-util-2.2.20" = self.by-version."gulp-util"."2.2.20";
      "through2-0.4.2" = self.by-version."through2"."0.4.2";
      "stream-to-array-1.0.0" = self.by-version."stream-to-array"."1.0.0";
    };
    peerDependencies = [];
  };
  "gulp-gzip" = self.by-version."gulp-gzip"."0.0.8";
  by-spec."gulp-html-replace"."~1.1.0" =
    self.by-version."gulp-html-replace"."1.1.0";
  by-version."gulp-html-replace"."1.1.0" = self.buildNodePackage {
    name = "gulp-html-replace-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-html-replace/-/gulp-html-replace-1.1.0.tgz";
      name = "gulp-html-replace-1.1.0.tgz";
      sha1 = "f5d42ea0a3b33e8525ca5c1d7a26a557d6192e2c";
    };
    deps = {
      "through2-0.4.2" = self.by-version."through2"."0.4.2";
    };
    peerDependencies = [];
  };
  "gulp-html-replace" = self.by-version."gulp-html-replace"."1.1.0";
  by-spec."gulp-inject"."~1.0.1" =
    self.by-version."gulp-inject"."1.0.2";
  by-version."gulp-inject"."1.0.2" = self.buildNodePackage {
    name = "gulp-inject-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-inject/-/gulp-inject-1.0.2.tgz";
      name = "gulp-inject-1.0.2.tgz";
      sha1 = "f6bf3c62f25ccf30fbc91dc1c086e24b2e5619d6";
    };
    deps = {
      "gulp-util-3.0.6" = self.by-version."gulp-util"."3.0.6";
      "event-stream-3.3.1" = self.by-version."event-stream"."3.3.1";
    };
    peerDependencies = [];
  };
  "gulp-inject" = self.by-version."gulp-inject"."1.0.2";
  by-spec."gulp-insert"."~0.4.0" =
    self.by-version."gulp-insert"."0.4.0";
  by-version."gulp-insert"."0.4.0" = self.buildNodePackage {
    name = "gulp-insert-0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-insert/-/gulp-insert-0.4.0.tgz";
      name = "gulp-insert-0.4.0.tgz";
      sha1 = "781213f110de39e9b36ca8c3bb502e045a58cdfd";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "streamqueue-0.0.6" = self.by-version."streamqueue"."0.0.6";
    };
    peerDependencies = [];
  };
  "gulp-insert" = self.by-version."gulp-insert"."0.4.0";
  by-spec."gulp-less"."~1.3.3" =
    self.by-version."gulp-less"."1.3.9";
  by-version."gulp-less"."1.3.9" = self.buildNodePackage {
    name = "gulp-less-1.3.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-less/-/gulp-less-1.3.9.tgz";
      name = "gulp-less-1.3.9.tgz";
      sha1 = "e129750f236693ead5b522af311cc33eeff1910e";
    };
    deps = {
      "convert-source-map-0.4.1" = self.by-version."convert-source-map"."0.4.1";
      "gulp-util-3.0.6" = self.by-version."gulp-util"."3.0.6";
      "less-1.7.5" = self.by-version."less"."1.7.5";
      "lodash.defaults-2.4.1" = self.by-version."lodash.defaults"."2.4.1";
      "through2-0.5.1" = self.by-version."through2"."0.5.1";
      "vinyl-sourcemaps-apply-0.1.4" = self.by-version."vinyl-sourcemaps-apply"."0.1.4";
    };
    peerDependencies = [];
  };
  "gulp-less" = self.by-version."gulp-less"."1.3.9";
  by-spec."gulp-minify-css"."~0.3.7" =
    self.by-version."gulp-minify-css"."0.3.13";
  by-version."gulp-minify-css"."0.3.13" = self.buildNodePackage {
    name = "gulp-minify-css-0.3.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-minify-css/-/gulp-minify-css-0.3.13.tgz";
      name = "gulp-minify-css-0.3.13.tgz";
      sha1 = "ba813c665422868305383ccd185f239c1e35209b";
    };
    deps = {
      "gulp-util-3.0.6" = self.by-version."gulp-util"."3.0.6";
      "clean-css-3.0.10" = self.by-version."clean-css"."3.0.10";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
      "bufferstreams-0.0.2" = self.by-version."bufferstreams"."0.0.2";
      "memory-cache-0.0.5" = self.by-version."memory-cache"."0.0.5";
      "vinyl-sourcemaps-apply-0.1.4" = self.by-version."vinyl-sourcemaps-apply"."0.1.4";
    };
    peerDependencies = [];
  };
  "gulp-minify-css" = self.by-version."gulp-minify-css"."0.3.13";
  by-spec."gulp-replace"."~0.4.0" =
    self.by-version."gulp-replace"."0.4.0";
  by-version."gulp-replace"."0.4.0" = self.buildNodePackage {
    name = "gulp-replace-0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-replace/-/gulp-replace-0.4.0.tgz";
      name = "gulp-replace-0.4.0.tgz";
      sha1 = "e22bc9c03e9d051b32881cc589bd3e8c4e54168a";
    };
    deps = {
      "event-stream-3.0.20" = self.by-version."event-stream"."3.0.20";
      "replacestream-0.1.3" = self.by-version."replacestream"."0.1.3";
      "istextorbinary-1.0.2" = self.by-version."istextorbinary"."1.0.2";
    };
    peerDependencies = [];
  };
  "gulp-replace" = self.by-version."gulp-replace"."0.4.0";
  by-spec."gulp-shell"."^0.2.9" =
    self.by-version."gulp-shell"."0.2.11";
  by-version."gulp-shell"."0.2.11" = self.buildNodePackage {
    name = "gulp-shell-0.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-shell/-/gulp-shell-0.2.11.tgz";
      name = "gulp-shell-0.2.11.tgz";
      sha1 = "19ba680b65a866f6042ede0b0e34b62db71f2139";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "gulp-util-3.0.6" = self.by-version."gulp-util"."3.0.6";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
    };
    peerDependencies = [];
  };
  "gulp-shell" = self.by-version."gulp-shell"."0.2.11";
  by-spec."gulp-sourcemaps"."~1.1.0" =
    self.by-version."gulp-sourcemaps"."1.1.5";
  by-version."gulp-sourcemaps"."1.1.5" = self.buildNodePackage {
    name = "gulp-sourcemaps-1.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-sourcemaps/-/gulp-sourcemaps-1.1.5.tgz";
      name = "gulp-sourcemaps-1.1.5.tgz";
      sha1 = "b09ff58e2c0afa6aef4126d0de10eb86dd4b4b0d";
    };
    deps = {
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
      "vinyl-0.4.6" = self.by-version."vinyl"."0.4.6";
      "convert-source-map-0.4.1" = self.by-version."convert-source-map"."0.4.1";
    };
    peerDependencies = [];
  };
  "gulp-sourcemaps" = self.by-version."gulp-sourcemaps"."1.1.5";
  by-spec."gulp-uglify"."~0.3.1" =
    self.by-version."gulp-uglify"."0.3.2";
  by-version."gulp-uglify"."0.3.2" = self.buildNodePackage {
    name = "gulp-uglify-0.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-uglify/-/gulp-uglify-0.3.2.tgz";
      name = "gulp-uglify-0.3.2.tgz";
      sha1 = "fa37bf6d4ad9a29a349c6cba862abb22eba67aac";
    };
    deps = {
      "deepmerge-0.2.10" = self.by-version."deepmerge"."0.2.10";
      "gulp-util-3.0.6" = self.by-version."gulp-util"."3.0.6";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
      "uglify-js-2.4.6" = self.by-version."uglify-js"."2.4.6";
    };
    peerDependencies = [];
  };
  "gulp-uglify" = self.by-version."gulp-uglify"."0.3.2";
  by-spec."gulp-util".">=3.0.0 <4.0.0-0" =
    self.by-version."gulp-util"."3.0.6";
  by-version."gulp-util"."3.0.6" = self.buildNodePackage {
    name = "gulp-util-3.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-util/-/gulp-util-3.0.6.tgz";
      name = "gulp-util-3.0.6.tgz";
      sha1 = "a0b4e99edbf239c8609573e485999ddfc13e1e4a";
    };
    deps = {
      "array-differ-1.0.0" = self.by-version."array-differ"."1.0.0";
      "array-uniq-1.0.2" = self.by-version."array-uniq"."1.0.2";
      "beeper-1.1.0" = self.by-version."beeper"."1.1.0";
      "chalk-1.0.0" = self.by-version."chalk"."1.0.0";
      "dateformat-1.0.11" = self.by-version."dateformat"."1.0.11";
      "lodash._reescape-3.0.0" = self.by-version."lodash._reescape"."3.0.0";
      "lodash._reevaluate-3.0.0" = self.by-version."lodash._reevaluate"."3.0.0";
      "lodash._reinterpolate-3.0.0" = self.by-version."lodash._reinterpolate"."3.0.0";
      "lodash.template-3.6.1" = self.by-version."lodash.template"."3.6.1";
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
      "multipipe-0.1.2" = self.by-version."multipipe"."0.1.2";
      "object-assign-3.0.0" = self.by-version."object-assign"."3.0.0";
      "replace-ext-0.0.1" = self.by-version."replace-ext"."0.0.1";
      "through2-2.0.0" = self.by-version."through2"."2.0.0";
      "vinyl-0.5.0" = self.by-version."vinyl"."0.5.0";
    };
    peerDependencies = [];
  };
  by-spec."gulp-util"."^2.2.14" =
    self.by-version."gulp-util"."2.2.20";
  by-version."gulp-util"."2.2.20" = self.buildNodePackage {
    name = "gulp-util-2.2.20";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gulp-util/-/gulp-util-2.2.20.tgz";
      name = "gulp-util-2.2.20.tgz";
      sha1 = "d7146e5728910bd8f047a6b0b1e549bc22dbd64c";
    };
    deps = {
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "dateformat-1.0.11" = self.by-version."dateformat"."1.0.11";
      "lodash._reinterpolate-2.4.1" = self.by-version."lodash._reinterpolate"."2.4.1";
      "lodash.template-2.4.1" = self.by-version."lodash.template"."2.4.1";
      "minimist-0.2.0" = self.by-version."minimist"."0.2.0";
      "multipipe-0.1.2" = self.by-version."multipipe"."0.1.2";
      "through2-0.5.1" = self.by-version."through2"."0.5.1";
      "vinyl-0.2.3" = self.by-version."vinyl"."0.2.3";
    };
    peerDependencies = [];
  };
  by-spec."gulp-util"."^2.2.5" =
    self.by-version."gulp-util"."2.2.20";
  by-spec."gulp-util"."^3.0.0" =
    self.by-version."gulp-util"."3.0.6";
  by-spec."gulp-util"."~2.2.6" =
    self.by-version."gulp-util"."2.2.20";
  by-spec."gulp-util"."~3.0.1" =
    self.by-version."gulp-util"."3.0.6";
  by-spec."har-validator"."^1.6.1" =
    self.by-version."har-validator"."1.8.0";
  by-version."har-validator"."1.8.0" = self.buildNodePackage {
    name = "har-validator-1.8.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/har-validator/-/har-validator-1.8.0.tgz";
      name = "har-validator-1.8.0.tgz";
      sha1 = "d83842b0eb4c435960aeb108a067a3aa94c0eeb2";
    };
    deps = {
      "bluebird-2.9.30" = self.by-version."bluebird"."2.9.30";
      "chalk-1.0.0" = self.by-version."chalk"."1.0.0";
      "commander-2.8.1" = self.by-version."commander"."2.8.1";
      "is-my-json-valid-2.12.0" = self.by-version."is-my-json-valid"."2.12.0";
    };
    peerDependencies = [];
  };
  by-spec."has-ansi"."^0.1.0" =
    self.by-version."has-ansi"."0.1.0";
  by-version."has-ansi"."0.1.0" = self.buildNodePackage {
    name = "has-ansi-0.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-ansi/-/has-ansi-0.1.0.tgz";
      name = "has-ansi-0.1.0.tgz";
      sha1 = "84f265aae8c0e6a88a12d7022894b7568894c62e";
    };
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    peerDependencies = [];
  };
  by-spec."has-ansi"."^1.0.3" =
    self.by-version."has-ansi"."1.0.3";
  by-version."has-ansi"."1.0.3" = self.buildNodePackage {
    name = "has-ansi-1.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-ansi/-/has-ansi-1.0.3.tgz";
      name = "has-ansi-1.0.3.tgz";
      sha1 = "c0b5b1615d9e382b0ff67169d967b425e48ca538";
    };
    deps = {
      "ansi-regex-1.1.1" = self.by-version."ansi-regex"."1.1.1";
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
    };
    peerDependencies = [];
  };
  by-spec."has-binary"."0.1.5" =
    self.by-version."has-binary"."0.1.5";
  by-version."has-binary"."0.1.5" = self.buildNodePackage {
    name = "has-binary-0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary/-/has-binary-0.1.5.tgz";
      name = "has-binary-0.1.5.tgz";
      sha1 = "95e75720ff31b72a3ba89a5b6dce082e4bc6467f";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."has-binary"."0.1.6" =
    self.by-version."has-binary"."0.1.6";
  by-version."has-binary"."0.1.6" = self.buildNodePackage {
    name = "has-binary-0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary/-/has-binary-0.1.6.tgz";
      name = "has-binary-0.1.6.tgz";
      sha1 = "25326f39cfa4f616ad8787894e3af2cfbc7b6e10";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."has-binary-data"."0.1.3" =
    self.by-version."has-binary-data"."0.1.3";
  by-version."has-binary-data"."0.1.3" = self.buildNodePackage {
    name = "has-binary-data-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary-data/-/has-binary-data-0.1.3.tgz";
      name = "has-binary-data-0.1.3.tgz";
      sha1 = "8ebb18388b57f19a5231275a16fc18d51f379aae";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."has-cors"."1.0.3" =
    self.by-version."has-cors"."1.0.3";
  by-version."has-cors"."1.0.3" = self.buildNodePackage {
    name = "has-cors-1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-cors/-/has-cors-1.0.3.tgz";
      name = "has-cors-1.0.3.tgz";
      sha1 = "502acb9b3104dac33dd2630eaf2f888b0baf4cb3";
    };
    deps = {
      "global-2.0.1" = self.by-version."global"."2.0.1";
    };
    peerDependencies = [];
  };
  by-spec."hawk"."1.1.1" =
    self.by-version."hawk"."1.1.1";
  by-version."hawk"."1.1.1" = self.buildNodePackage {
    name = "hawk-1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-1.1.1.tgz";
      name = "hawk-1.1.1.tgz";
      sha1 = "87cd491f9b46e4e2aeaca335416766885d2d1ed9";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
      "boom-0.4.2" = self.by-version."boom"."0.4.2";
      "cryptiles-0.2.2" = self.by-version."cryptiles"."0.2.2";
      "sntp-0.2.4" = self.by-version."sntp"."0.2.4";
    };
    peerDependencies = [];
  };
  by-spec."hawk"."~2.3.0" =
    self.by-version."hawk"."2.3.1";
  by-version."hawk"."2.3.1" = self.buildNodePackage {
    name = "hawk-2.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-2.3.1.tgz";
      name = "hawk-2.3.1.tgz";
      sha1 = "1e731ce39447fa1d0f6d707f7bceebec0fd1ec1f";
    };
    deps = {
      "hoek-2.14.0" = self.by-version."hoek"."2.14.0";
      "boom-2.8.0" = self.by-version."boom"."2.8.0";
      "cryptiles-2.0.4" = self.by-version."cryptiles"."2.0.4";
      "sntp-1.0.9" = self.by-version."sntp"."1.0.9";
    };
    peerDependencies = [];
  };
  by-spec."hoek"."0.9.x" =
    self.by-version."hoek"."0.9.1";
  by-version."hoek"."0.9.1" = self.buildNodePackage {
    name = "hoek-0.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoek/-/hoek-0.9.1.tgz";
      name = "hoek-0.9.1.tgz";
      sha1 = "3d322462badf07716ea7eb85baf88079cddce505";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."hoek"."2.x.x" =
    self.by-version."hoek"."2.14.0";
  by-version."hoek"."2.14.0" = self.buildNodePackage {
    name = "hoek-2.14.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoek/-/hoek-2.14.0.tgz";
      name = "hoek-2.14.0.tgz";
      sha1 = "81211691f52a5a835ae49edbf1e89c9003476aa4";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."http-errors"."~1.3.1" =
    self.by-version."http-errors"."1.3.1";
  by-version."http-errors"."1.3.1" = self.buildNodePackage {
    name = "http-errors-1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-errors/-/http-errors-1.3.1.tgz";
      name = "http-errors-1.3.1.tgz";
      sha1 = "197e22cdebd4198585e8694ef6786197b91ed942";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    peerDependencies = [];
  };
  by-spec."http-proxy"."^0.10" =
    self.by-version."http-proxy"."0.10.4";
  by-version."http-proxy"."0.10.4" = self.buildNodePackage {
    name = "http-proxy-0.10.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-proxy/-/http-proxy-0.10.4.tgz";
      name = "http-proxy-0.10.4.tgz";
      sha1 = "14ba0ceaa2197f89fa30dea9e7b09e19cd93c22f";
    };
    deps = {
      "colors-0.6.2" = self.by-version."colors"."0.6.2";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "pkginfo-0.3.0" = self.by-version."pkginfo"."0.3.0";
      "utile-0.2.1" = self.by-version."utile"."0.2.1";
    };
    peerDependencies = [];
  };
  by-spec."http-signature"."~0.10.0" =
    self.by-version."http-signature"."0.10.1";
  by-version."http-signature"."0.10.1" = self.buildNodePackage {
    name = "http-signature-0.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-0.10.1.tgz";
      name = "http-signature-0.10.1.tgz";
      sha1 = "4fbdac132559aa8323121e540779c0a012b27e66";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
      "asn1-0.1.11" = self.by-version."asn1"."0.1.11";
      "ctype-0.5.3" = self.by-version."ctype"."0.5.3";
    };
    peerDependencies = [];
  };
  by-spec."http-signature"."~0.11.0" =
    self.by-version."http-signature"."0.11.0";
  by-version."http-signature"."0.11.0" = self.buildNodePackage {
    name = "http-signature-0.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-0.11.0.tgz";
      name = "http-signature-0.11.0.tgz";
      sha1 = "1796cf67a001ad5cd6849dca0991485f09089fe6";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
      "asn1-0.1.11" = self.by-version."asn1"."0.1.11";
      "ctype-0.5.3" = self.by-version."ctype"."0.5.3";
    };
    peerDependencies = [];
  };
  by-spec."i"."0.3.x" =
    self.by-version."i"."0.3.3";
  by-version."i"."0.3.3" = self.buildNodePackage {
    name = "i-0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/i/-/i-0.3.3.tgz";
      name = "i-0.3.3.tgz";
      sha1 = "0ff9a5eb743504aa8ac26a84f84c641287ff24cd";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."iconv-lite"."0.4.10" =
    self.by-version."iconv-lite"."0.4.10";
  by-version."iconv-lite"."0.4.10" = self.buildNodePackage {
    name = "iconv-lite-0.4.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.10.tgz";
      name = "iconv-lite-0.4.10.tgz";
      sha1 = "4f1a2562efd36d41c54d45c59999b590951796de";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."indent-string"."^1.1.0" =
    self.by-version."indent-string"."1.2.1";
  by-version."indent-string"."1.2.1" = self.buildNodePackage {
    name = "indent-string-1.2.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/indent-string/-/indent-string-1.2.1.tgz";
      name = "indent-string-1.2.1.tgz";
      sha1 = "294c5930792f8bb5b14462a4aa425b94f07d3a56";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
      "repeating-1.1.3" = self.by-version."repeating"."1.1.3";
    };
    peerDependencies = [];
  };
  by-spec."indexof"."0.0.1" =
    self.by-version."indexof"."0.0.1";
  by-version."indexof"."0.0.1" = self.buildNodePackage {
    name = "indexof-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/indexof/-/indexof-0.0.1.tgz";
      name = "indexof-0.0.1.tgz";
      sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
    };
    deps = {
    };
    peerDependencies = [];
  };
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
      "once-1.3.2" = self.by-version."once"."1.3.2";
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
  by-spec."inherits"."2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."interpret"."^0.6.2" =
    self.by-version."interpret"."0.6.2";
  by-version."interpret"."0.6.2" = self.buildNodePackage {
    name = "interpret-0.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/interpret/-/interpret-0.6.2.tgz";
      name = "interpret-0.6.2.tgz";
      sha1 = "f76f87be2a465e00dae60ae59904fa385baa0c01";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-absolute"."^0.1.7" =
    self.by-version."is-absolute"."0.1.7";
  by-version."is-absolute"."0.1.7" = self.buildNodePackage {
    name = "is-absolute-0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-absolute/-/is-absolute-0.1.7.tgz";
      name = "is-absolute-0.1.7.tgz";
      sha1 = "847491119fccb5fb436217cc737f7faad50f603f";
    };
    deps = {
      "is-relative-0.1.3" = self.by-version."is-relative"."0.1.3";
    };
    peerDependencies = [];
  };
  by-spec."is-binary-path"."^1.0.0" =
    self.by-version."is-binary-path"."1.0.1";
  by-version."is-binary-path"."1.0.1" = self.buildNodePackage {
    name = "is-binary-path-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz";
      name = "is-binary-path-1.0.1.tgz";
      sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
    };
    deps = {
      "binary-extensions-1.3.1" = self.by-version."binary-extensions"."1.3.1";
    };
    peerDependencies = [];
  };
  by-spec."is-dotfile"."^1.0.0" =
    self.by-version."is-dotfile"."1.0.1";
  by-version."is-dotfile"."1.0.1" = self.buildNodePackage {
    name = "is-dotfile-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.1.tgz";
      name = "is-dotfile-1.0.1.tgz";
      sha1 = "38beee44a79a835242c6cce328a88b7eddac5d5f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-equal-shallow"."^0.1.1" =
    self.by-version."is-equal-shallow"."0.1.3";
  by-version."is-equal-shallow"."0.1.3" = self.buildNodePackage {
    name = "is-equal-shallow-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
      name = "is-equal-shallow-0.1.3.tgz";
      sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
    };
    deps = {
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    peerDependencies = [];
  };
  by-spec."is-extglob"."^1.0.0" =
    self.by-version."is-extglob"."1.0.0";
  by-version."is-extglob"."1.0.0" = self.buildNodePackage {
    name = "is-extglob-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz";
      name = "is-extglob-1.0.0.tgz";
      sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-finite"."^1.0.0" =
    self.by-version."is-finite"."1.0.1";
  by-version."is-finite"."1.0.1" = self.buildNodePackage {
    name = "is-finite-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-finite/-/is-finite-1.0.1.tgz";
      name = "is-finite-1.0.1.tgz";
      sha1 = "6438603eaebe2793948ff4a4262ec8db3d62597b";
    };
    deps = {
      "number-is-nan-1.0.0" = self.by-version."number-is-nan"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."is-glob"."^1.1.1" =
    self.by-version."is-glob"."1.1.3";
  by-version."is-glob"."1.1.3" = self.buildNodePackage {
    name = "is-glob-1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-glob/-/is-glob-1.1.3.tgz";
      name = "is-glob-1.1.3.tgz";
      sha1 = "b4c64b8303d39114492a460d364ccfb0d3c0a045";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-glob"."^1.1.3" =
    self.by-version."is-glob"."1.1.3";
  by-spec."is-my-json-valid"."^2.12.0" =
    self.by-version."is-my-json-valid"."2.12.0";
  by-version."is-my-json-valid"."2.12.0" = self.buildNodePackage {
    name = "is-my-json-valid-2.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.12.0.tgz";
      name = "is-my-json-valid-2.12.0.tgz";
      sha1 = "8fa6c408b26be95b45a23e8f8c4b464a53874d2b";
    };
    deps = {
      "generate-function-2.0.0" = self.by-version."generate-function"."2.0.0";
      "generate-object-property-1.2.0" = self.by-version."generate-object-property"."1.2.0";
      "jsonpointer-1.1.0" = self.by-version."jsonpointer"."1.1.0";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    peerDependencies = [];
  };
  by-spec."is-number"."^0.1.1" =
    self.by-version."is-number"."0.1.1";
  by-version."is-number"."0.1.1" = self.buildNodePackage {
    name = "is-number-0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-number/-/is-number-0.1.1.tgz";
      name = "is-number-0.1.1.tgz";
      sha1 = "69a7af116963d47206ec9bd9b48a14216f1e3806";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-number"."^1.1.0" =
    self.by-version."is-number"."1.1.2";
  by-version."is-number"."1.1.2" = self.buildNodePackage {
    name = "is-number-1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-number/-/is-number-1.1.2.tgz";
      name = "is-number-1.1.2.tgz";
      sha1 = "9d82409f3a8a8beecf249b1bc7dada49829966e4";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-number"."^1.1.2" =
    self.by-version."is-number"."1.1.2";
  by-spec."is-primitive"."^2.0.0" =
    self.by-version."is-primitive"."2.0.0";
  by-version."is-primitive"."2.0.0" = self.buildNodePackage {
    name = "is-primitive-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz";
      name = "is-primitive-2.0.0.tgz";
      sha1 = "207bab91638499c07b2adf240a41a87210034575";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-property"."^1.0.0" =
    self.by-version."is-property"."1.0.2";
  by-version."is-property"."1.0.2" = self.buildNodePackage {
    name = "is-property-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
      name = "is-property-1.0.2.tgz";
      sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-relative"."^0.1.0" =
    self.by-version."is-relative"."0.1.3";
  by-version."is-relative"."0.1.3" = self.buildNodePackage {
    name = "is-relative-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-relative/-/is-relative-0.1.3.tgz";
      name = "is-relative-0.1.3.tgz";
      sha1 = "905fee8ae86f45b3ec614bc3c15c869df0876e82";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."is-utf8"."^0.2.0" =
    self.by-version."is-utf8"."0.2.0";
  by-version."is-utf8"."0.2.0" = self.buildNodePackage {
    name = "is-utf8-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-utf8/-/is-utf8-0.2.0.tgz";
      name = "is-utf8-0.2.0.tgz";
      sha1 = "b8aa54125ae626bfe4e3beb965f16a89c58a1137";
    };
    deps = {
    };
    peerDependencies = [];
  };
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
  by-spec."isobject"."^0.2.0" =
    self.by-version."isobject"."0.2.0";
  by-version."isobject"."0.2.0" = self.buildNodePackage {
    name = "isobject-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isobject/-/isobject-0.2.0.tgz";
      name = "isobject-0.2.0.tgz";
      sha1 = "a3432192f39b910b5f02cc989487836ec70aa85e";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."isobject"."^1.0.0" =
    self.by-version."isobject"."1.0.0";
  by-version."isobject"."1.0.0" = self.buildNodePackage {
    name = "isobject-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isobject/-/isobject-1.0.0.tgz";
      name = "isobject-1.0.0.tgz";
      sha1 = "97fa6e8007c8e1251276be7565ce34ae69c90083";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."isstream"."~0.1.1" =
    self.by-version."isstream"."0.1.2";
  by-version."isstream"."0.1.2" = self.buildNodePackage {
    name = "isstream-0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
      name = "isstream-0.1.2.tgz";
      sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."istextorbinary"."~1.0.0" =
    self.by-version."istextorbinary"."1.0.2";
  by-version."istextorbinary"."1.0.2" = self.buildNodePackage {
    name = "istextorbinary-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/istextorbinary/-/istextorbinary-1.0.2.tgz";
      name = "istextorbinary-1.0.2.tgz";
      sha1 = "ace19354d1a9a0173efeb1084ce0f87b0ad7decf";
    };
    deps = {
      "textextensions-1.0.1" = self.by-version."textextensions"."1.0.1";
      "binaryextensions-1.0.0" = self.by-version."binaryextensions"."1.0.0";
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
  by-spec."json-stringify-safe"."~5.0.0" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-version."json-stringify-safe"."5.0.1" = self.buildNodePackage {
    name = "json-stringify-safe-5.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
      name = "json-stringify-safe-5.0.1.tgz";
      sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."json3"."3.2.6" =
    self.by-version."json3"."3.2.6";
  by-version."json3"."3.2.6" = self.buildNodePackage {
    name = "json3-3.2.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json3/-/json3-3.2.6.tgz";
      name = "json3-3.2.6.tgz";
      sha1 = "f6efc93c06a04de9aec53053df2559bb19e2038b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."jsonpointer"."^1.1.0" =
    self.by-version."jsonpointer"."1.1.0";
  by-version."jsonpointer"."1.1.0" = self.buildNodePackage {
    name = "jsonpointer-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonpointer/-/jsonpointer-1.1.0.tgz";
      name = "jsonpointer-1.1.0.tgz";
      sha1 = "c3c72efaed3b97154163dc01dd349e1cfe0f80fc";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."karma"."0.12.37" =
    self.by-version."karma"."0.12.37";
  by-version."karma"."0.12.37" = self.buildNodePackage {
    name = "karma-0.12.37";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma/-/karma-0.12.37.tgz";
      name = "karma-0.12.37.tgz";
      sha1 = "1a9f7fdeccd69de2e835e04edbac2ecd3fa645e4";
    };
    deps = {
      "chokidar-1.0.3" = self.by-version."chokidar"."1.0.3";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "connect-2.30.0" = self.by-version."connect"."2.30.0";
      "di-0.0.1" = self.by-version."di"."0.0.1";
      "glob-5.0.11" = self.by-version."glob"."5.0.11";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "http-proxy-0.10.4" = self.by-version."http-proxy"."0.10.4";
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "log4js-0.6.26" = self.by-version."log4js"."0.6.26";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "q-1.4.1" = self.by-version."q"."1.4.1";
      "rimraf-2.4.0" = self.by-version."rimraf"."2.4.0";
      "socket.io-0.9.16" = self.by-version."socket.io"."0.9.16";
      "source-map-0.4.2" = self.by-version."source-map"."0.4.2";
      "useragent-2.1.7" = self.by-version."useragent"."2.1.7";
    };
    peerDependencies = [];
  };
  "karma" = self.by-version."karma"."0.12.37";
  by-spec."karma".">=0.10.9" =
    self.by-version."karma"."0.13.0-rc.6";
  by-version."karma"."0.13.0-rc.6" = self.buildNodePackage {
    name = "karma-0.13.0-rc.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma/-/karma-0.13.0-rc.6.tgz";
      name = "karma-0.13.0-rc.6.tgz";
      sha1 = "36141517d46f333b95c81df58ddd79a783a2ea36";
    };
    deps = {
      "bluebird-2.9.30" = self.by-version."bluebird"."2.9.30";
      "body-parser-1.13.1" = self.by-version."body-parser"."1.13.1";
      "chokidar-1.0.3" = self.by-version."chokidar"."1.0.3";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "connect-3.4.0" = self.by-version."connect"."3.4.0";
      "core-js-0.9.18" = self.by-version."core-js"."0.9.18";
      "di-0.0.1" = self.by-version."di"."0.0.1";
      "expand-braces-0.1.1" = self.by-version."expand-braces"."0.1.1";
      "glob-5.0.11" = self.by-version."glob"."5.0.11";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "http-proxy-0.10.4" = self.by-version."http-proxy"."0.10.4";
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "log4js-0.6.26" = self.by-version."log4js"."0.6.26";
      "memoizee-0.3.8" = self.by-version."memoizee"."0.3.8";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "rimraf-2.4.0" = self.by-version."rimraf"."2.4.0";
      "socket.io-1.3.5" = self.by-version."socket.io"."1.3.5";
      "source-map-0.4.2" = self.by-version."source-map"."0.4.2";
      "useragent-2.1.7" = self.by-version."useragent"."2.1.7";
    };
    peerDependencies = [];
  };
  by-spec."karma".">=0.12.8" =
    self.by-version."karma"."0.13.0-rc.6";
  by-spec."karma".">=0.9" =
    self.by-version."karma"."0.13.0-rc.6";
  by-spec."karma-chai"."~0.1.0" =
    self.by-version."karma-chai"."0.1.0";
  by-version."karma-chai"."0.1.0" = self.buildNodePackage {
    name = "karma-chai-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-chai/-/karma-chai-0.1.0.tgz";
      name = "karma-chai-0.1.0.tgz";
      sha1 = "bee5ad40400517811ae34bb945f762909108b79a";
    };
    deps = {
    };
    peerDependencies = [
      self.by-version."chai"."3.0.0"
      self.by-version."karma"."0.13.0-rc.6"];
  };
  "karma-chai" = self.by-version."karma-chai"."0.1.0";
  by-spec."karma-chai-plugins"."^0.2.3" =
    self.by-version."karma-chai-plugins"."0.2.4";
  by-version."karma-chai-plugins"."0.2.4" = self.buildNodePackage {
    name = "karma-chai-plugins-0.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-chai-plugins/-/karma-chai-plugins-0.2.4.tgz";
      name = "karma-chai-plugins-0.2.4.tgz";
      sha1 = "c5144c678a261d335875388e325ecb00e5d8dc35";
    };
    deps = {
      "chai-1.10.0" = self.by-version."chai"."1.10.0";
      "chai-as-promised-4.3.0" = self.by-version."chai-as-promised"."4.3.0";
      "chai-jquery-2.0.0" = self.by-version."chai-jquery"."2.0.0";
      "chai-things-0.2.0" = self.by-version."chai-things"."0.2.0";
      "sinon-1.15.4" = self.by-version."sinon"."1.15.4";
      "sinon-chai-2.8.0" = self.by-version."sinon-chai"."2.8.0";
    };
    peerDependencies = [
      self.by-version."karma"."0.13.0-rc.6"];
  };
  "karma-chai-plugins" = self.by-version."karma-chai-plugins"."0.2.4";
  by-spec."karma-chrome-launcher"."~0.1.4" =
    self.by-version."karma-chrome-launcher"."0.1.12";
  by-version."karma-chrome-launcher"."0.1.12" = self.buildNodePackage {
    name = "karma-chrome-launcher-0.1.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-chrome-launcher/-/karma-chrome-launcher-0.1.12.tgz";
      name = "karma-chrome-launcher-0.1.12.tgz";
      sha1 = "0ac0e22e573650f6541312fdca795c3824ccf962";
    };
    deps = {
      "which-1.1.1" = self.by-version."which"."1.1.1";
    };
    peerDependencies = [];
  };
  "karma-chrome-launcher" = self.by-version."karma-chrome-launcher"."0.1.12";
  by-spec."karma-firefox-launcher"."~0.1.3" =
    self.by-version."karma-firefox-launcher"."0.1.6";
  by-version."karma-firefox-launcher"."0.1.6" = self.buildNodePackage {
    name = "karma-firefox-launcher-0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-firefox-launcher/-/karma-firefox-launcher-0.1.6.tgz";
      name = "karma-firefox-launcher-0.1.6.tgz";
      sha1 = "e5e8336c35e9f2c87dcadd06c8ec568d06530b55";
    };
    deps = {
    };
    peerDependencies = [];
  };
  "karma-firefox-launcher" = self.by-version."karma-firefox-launcher"."0.1.6";
  by-spec."karma-junit-reporter"."~0.2.2" =
    self.by-version."karma-junit-reporter"."0.2.2";
  by-version."karma-junit-reporter"."0.2.2" = self.buildNodePackage {
    name = "karma-junit-reporter-0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-junit-reporter/-/karma-junit-reporter-0.2.2.tgz";
      name = "karma-junit-reporter-0.2.2.tgz";
      sha1 = "4cdd4e21affd3e090e7ba73e3c766ea9e13c45ba";
    };
    deps = {
      "xmlbuilder-0.4.2" = self.by-version."xmlbuilder"."0.4.2";
    };
    peerDependencies = [
      self.by-version."karma"."0.13.0-rc.6"];
  };
  "karma-junit-reporter" = self.by-version."karma-junit-reporter"."0.2.2";
  by-spec."karma-mocha"."~0.1.4" =
    self.by-version."karma-mocha"."0.1.10";
  by-version."karma-mocha"."0.1.10" = self.buildNodePackage {
    name = "karma-mocha-0.1.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-mocha/-/karma-mocha-0.1.10.tgz";
      name = "karma-mocha-0.1.10.tgz";
      sha1 = "29ed51d4b121af1373444ec555b20a905bf42b92";
    };
    deps = {
    };
    peerDependencies = [
      self.by-version."karma"."0.13.0-rc.6"
      self.by-version."mocha"."2.2.5"];
  };
  "karma-mocha" = self.by-version."karma-mocha"."0.1.10";
  by-spec."kind-of"."^1.0.0" =
    self.by-version."kind-of"."1.1.0";
  by-version."kind-of"."1.1.0" = self.buildNodePackage {
    name = "kind-of-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/kind-of/-/kind-of-1.1.0.tgz";
      name = "kind-of-1.1.0.tgz";
      sha1 = "140a3d2d41a36d2efcfa9377b62c24f8495a5c44";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."kind-of"."^1.1.0" =
    self.by-version."kind-of"."1.1.0";
  by-spec."less"."^1.7.4" =
    self.by-version."less"."1.7.5";
  by-version."less"."1.7.5" = self.buildNodePackage {
    name = "less-1.7.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/less/-/less-1.7.5.tgz";
      name = "less-1.7.5.tgz";
      sha1 = "4f220cf7288a27eaca739df6e4808a2d4c0d5756";
    };
    deps = {
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "request-2.40.0" = self.by-version."request"."2.40.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "clean-css-2.2.23" = self.by-version."clean-css"."2.2.23";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    peerDependencies = [];
  };
  by-spec."liftoff"."^2.1.0" =
    self.by-version."liftoff"."2.1.0";
  by-version."liftoff"."2.1.0" = self.buildNodePackage {
    name = "liftoff-2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/liftoff/-/liftoff-2.1.0.tgz";
      name = "liftoff-2.1.0.tgz";
      sha1 = "e39080520121c3026128e5ebbe4b549eed095530";
    };
    deps = {
      "extend-2.0.1" = self.by-version."extend"."2.0.1";
      "findup-sync-0.2.1" = self.by-version."findup-sync"."0.2.1";
      "flagged-respawn-0.3.1" = self.by-version."flagged-respawn"."0.3.1";
      "rechoir-0.6.1" = self.by-version."rechoir"."0.6.1";
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
    };
    peerDependencies = [];
  };
  by-spec."lodash"."^3.8.0" =
    self.by-version."lodash"."3.9.3";
  by-version."lodash"."3.9.3" = self.buildNodePackage {
    name = "lodash-3.9.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-3.9.3.tgz";
      name = "lodash-3.9.3.tgz";
      sha1 = "0159e86832feffc6d61d852b12a953b99496bd32";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash"."~1.0.1" =
    self.by-version."lodash"."1.0.2";
  by-version."lodash"."1.0.2" = self.buildNodePackage {
    name = "lodash-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-1.0.2.tgz";
      name = "lodash-1.0.2.tgz";
      sha1 = "8f57560c83b59fc270bd3d561b690043430e2551";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash"."~2.4.1" =
    self.by-version."lodash"."2.4.2";
  by-version."lodash"."2.4.2" = self.buildNodePackage {
    name = "lodash-2.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-2.4.2.tgz";
      name = "lodash-2.4.2.tgz";
      sha1 = "fadd834b9683073da179b3eae6d9c0d15053f73e";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._basecopy"."^3.0.0" =
    self.by-version."lodash._basecopy"."3.0.1";
  by-version."lodash._basecopy"."3.0.1" = self.buildNodePackage {
    name = "lodash._basecopy-3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._basecopy/-/lodash._basecopy-3.0.1.tgz";
      name = "lodash._basecopy-3.0.1.tgz";
      sha1 = "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._basetostring"."^3.0.0" =
    self.by-version."lodash._basetostring"."3.0.0";
  by-version."lodash._basetostring"."3.0.0" = self.buildNodePackage {
    name = "lodash._basetostring-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._basetostring/-/lodash._basetostring-3.0.0.tgz";
      name = "lodash._basetostring-3.0.0.tgz";
      sha1 = "75a9a4aaaa2b2a8761111ff5431e7d83c1daf0e2";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._basevalues"."^3.0.0" =
    self.by-version."lodash._basevalues"."3.0.0";
  by-version."lodash._basevalues"."3.0.0" = self.buildNodePackage {
    name = "lodash._basevalues-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._basevalues/-/lodash._basevalues-3.0.0.tgz";
      name = "lodash._basevalues-3.0.0.tgz";
      sha1 = "5b775762802bde3d3297503e26300820fdf661b7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._escapehtmlchar"."~2.4.1" =
    self.by-version."lodash._escapehtmlchar"."2.4.1";
  by-version."lodash._escapehtmlchar"."2.4.1" = self.buildNodePackage {
    name = "lodash._escapehtmlchar-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._escapehtmlchar/-/lodash._escapehtmlchar-2.4.1.tgz";
      name = "lodash._escapehtmlchar-2.4.1.tgz";
      sha1 = "df67c3bb6b7e8e1e831ab48bfa0795b92afe899d";
    };
    deps = {
      "lodash._htmlescapes-2.4.1" = self.by-version."lodash._htmlescapes"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash._escapestringchar"."~2.4.1" =
    self.by-version."lodash._escapestringchar"."2.4.1";
  by-version."lodash._escapestringchar"."2.4.1" = self.buildNodePackage {
    name = "lodash._escapestringchar-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._escapestringchar/-/lodash._escapestringchar-2.4.1.tgz";
      name = "lodash._escapestringchar-2.4.1.tgz";
      sha1 = "ecfe22618a2ade50bfeea43937e51df66f0edb72";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._getnative"."^3.0.0" =
    self.by-version."lodash._getnative"."3.9.0";
  by-version."lodash._getnative"."3.9.0" = self.buildNodePackage {
    name = "lodash._getnative-3.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._getnative/-/lodash._getnative-3.9.0.tgz";
      name = "lodash._getnative-3.9.0.tgz";
      sha1 = "a478f0b87dd17d75b4311ffca2f551b2623977d9";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._htmlescapes"."~2.4.1" =
    self.by-version."lodash._htmlescapes"."2.4.1";
  by-version."lodash._htmlescapes"."2.4.1" = self.buildNodePackage {
    name = "lodash._htmlescapes-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._htmlescapes/-/lodash._htmlescapes-2.4.1.tgz";
      name = "lodash._htmlescapes-2.4.1.tgz";
      sha1 = "32d14bf0844b6de6f8b62a051b4f67c228b624cb";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._isiterateecall"."^3.0.0" =
    self.by-version."lodash._isiterateecall"."3.0.9";
  by-version."lodash._isiterateecall"."3.0.9" = self.buildNodePackage {
    name = "lodash._isiterateecall-3.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
      name = "lodash._isiterateecall-3.0.9.tgz";
      sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._isnative"."~2.4.1" =
    self.by-version."lodash._isnative"."2.4.1";
  by-version."lodash._isnative"."2.4.1" = self.buildNodePackage {
    name = "lodash._isnative-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._isnative/-/lodash._isnative-2.4.1.tgz";
      name = "lodash._isnative-2.4.1.tgz";
      sha1 = "3ea6404b784a7be836c7b57580e1cdf79b14832c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._objecttypes"."~2.4.1" =
    self.by-version."lodash._objecttypes"."2.4.1";
  by-version."lodash._objecttypes"."2.4.1" = self.buildNodePackage {
    name = "lodash._objecttypes-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._objecttypes/-/lodash._objecttypes-2.4.1.tgz";
      name = "lodash._objecttypes-2.4.1.tgz";
      sha1 = "7c0b7f69d98a1f76529f890b0cdb1b4dfec11c11";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._reescape"."^3.0.0" =
    self.by-version."lodash._reescape"."3.0.0";
  by-version."lodash._reescape"."3.0.0" = self.buildNodePackage {
    name = "lodash._reescape-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._reescape/-/lodash._reescape-3.0.0.tgz";
      name = "lodash._reescape-3.0.0.tgz";
      sha1 = "2b1d6f5dfe07c8a355753e5f27fac7f1cde1616a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._reevaluate"."^3.0.0" =
    self.by-version."lodash._reevaluate"."3.0.0";
  by-version."lodash._reevaluate"."3.0.0" = self.buildNodePackage {
    name = "lodash._reevaluate-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._reevaluate/-/lodash._reevaluate-3.0.0.tgz";
      name = "lodash._reevaluate-3.0.0.tgz";
      sha1 = "58bc74c40664953ae0b124d806996daca431e2ed";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._reinterpolate"."^2.4.1" =
    self.by-version."lodash._reinterpolate"."2.4.1";
  by-version."lodash._reinterpolate"."2.4.1" = self.buildNodePackage {
    name = "lodash._reinterpolate-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._reinterpolate/-/lodash._reinterpolate-2.4.1.tgz";
      name = "lodash._reinterpolate-2.4.1.tgz";
      sha1 = "4f1227aa5a8711fc632f5b07a1f4607aab8b3222";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._reinterpolate"."^3.0.0" =
    self.by-version."lodash._reinterpolate"."3.0.0";
  by-version."lodash._reinterpolate"."3.0.0" = self.buildNodePackage {
    name = "lodash._reinterpolate-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._reinterpolate/-/lodash._reinterpolate-3.0.0.tgz";
      name = "lodash._reinterpolate-3.0.0.tgz";
      sha1 = "0ccf2d89166af03b3663c796538b75ac6e114d9d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash._reinterpolate"."~2.4.1" =
    self.by-version."lodash._reinterpolate"."2.4.1";
  by-spec."lodash._reunescapedhtml"."~2.4.1" =
    self.by-version."lodash._reunescapedhtml"."2.4.1";
  by-version."lodash._reunescapedhtml"."2.4.1" = self.buildNodePackage {
    name = "lodash._reunescapedhtml-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._reunescapedhtml/-/lodash._reunescapedhtml-2.4.1.tgz";
      name = "lodash._reunescapedhtml-2.4.1.tgz";
      sha1 = "747c4fc40103eb3bb8a0976e571f7a2659e93ba7";
    };
    deps = {
      "lodash._htmlescapes-2.4.1" = self.by-version."lodash._htmlescapes"."2.4.1";
      "lodash.keys-2.4.1" = self.by-version."lodash.keys"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash._shimkeys"."~2.4.1" =
    self.by-version."lodash._shimkeys"."2.4.1";
  by-version."lodash._shimkeys"."2.4.1" = self.buildNodePackage {
    name = "lodash._shimkeys-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._shimkeys/-/lodash._shimkeys-2.4.1.tgz";
      name = "lodash._shimkeys-2.4.1.tgz";
      sha1 = "6e9cc9666ff081f0b5a6c978b83e242e6949d203";
    };
    deps = {
      "lodash._objecttypes-2.4.1" = self.by-version."lodash._objecttypes"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash.defaults"."^2.4.1" =
    self.by-version."lodash.defaults"."2.4.1";
  by-version."lodash.defaults"."2.4.1" = self.buildNodePackage {
    name = "lodash.defaults-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.defaults/-/lodash.defaults-2.4.1.tgz";
      name = "lodash.defaults-2.4.1.tgz";
      sha1 = "a7e8885f05e68851144b6e12a8f3678026bc4c54";
    };
    deps = {
      "lodash.keys-2.4.1" = self.by-version."lodash.keys"."2.4.1";
      "lodash._objecttypes-2.4.1" = self.by-version."lodash._objecttypes"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash.defaults"."~2.4.1" =
    self.by-version."lodash.defaults"."2.4.1";
  by-spec."lodash.escape"."^3.0.0" =
    self.by-version."lodash.escape"."3.0.0";
  by-version."lodash.escape"."3.0.0" = self.buildNodePackage {
    name = "lodash.escape-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.escape/-/lodash.escape-3.0.0.tgz";
      name = "lodash.escape-3.0.0.tgz";
      sha1 = "fb294c99a7bfb586039f66d6b9c27ed874cb7b51";
    };
    deps = {
      "lodash._basetostring-3.0.0" = self.by-version."lodash._basetostring"."3.0.0";
    };
    peerDependencies = [];
  };
  by-spec."lodash.escape"."~2.4.1" =
    self.by-version."lodash.escape"."2.4.1";
  by-version."lodash.escape"."2.4.1" = self.buildNodePackage {
    name = "lodash.escape-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.escape/-/lodash.escape-2.4.1.tgz";
      name = "lodash.escape-2.4.1.tgz";
      sha1 = "2ce12c5e084db0a57dda5e5d1eeeb9f5d175a3b4";
    };
    deps = {
      "lodash._escapehtmlchar-2.4.1" = self.by-version."lodash._escapehtmlchar"."2.4.1";
      "lodash.keys-2.4.1" = self.by-version."lodash.keys"."2.4.1";
      "lodash._reunescapedhtml-2.4.1" = self.by-version."lodash._reunescapedhtml"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash.isarguments"."^3.0.0" =
    self.by-version."lodash.isarguments"."3.0.3";
  by-version."lodash.isarguments"."3.0.3" = self.buildNodePackage {
    name = "lodash.isarguments-3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isarguments/-/lodash.isarguments-3.0.3.tgz";
      name = "lodash.isarguments-3.0.3.tgz";
      sha1 = "c49ce087d622705e90018f71fa1c92fd2cdd94cf";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash.isarray"."^3.0.0" =
    self.by-version."lodash.isarray"."3.0.3";
  by-version."lodash.isarray"."3.0.3" = self.buildNodePackage {
    name = "lodash.isarray-3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isarray/-/lodash.isarray-3.0.3.tgz";
      name = "lodash.isarray-3.0.3.tgz";
      sha1 = "4dba139a2d907c24fd096849ce42f19c25523553";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash.isobject"."~2.4.1" =
    self.by-version."lodash.isobject"."2.4.1";
  by-version."lodash.isobject"."2.4.1" = self.buildNodePackage {
    name = "lodash.isobject-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isobject/-/lodash.isobject-2.4.1.tgz";
      name = "lodash.isobject-2.4.1.tgz";
      sha1 = "5a2e47fe69953f1ee631a7eba1fe64d2d06558f5";
    };
    deps = {
      "lodash._objecttypes-2.4.1" = self.by-version."lodash._objecttypes"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash.keys"."^3.0.0" =
    self.by-version."lodash.keys"."3.1.1";
  by-version."lodash.keys"."3.1.1" = self.buildNodePackage {
    name = "lodash.keys-3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.keys/-/lodash.keys-3.1.1.tgz";
      name = "lodash.keys-3.1.1.tgz";
      sha1 = "622029518e9de0e2ae8c4688d6563a45361640ef";
    };
    deps = {
      "lodash._getnative-3.9.0" = self.by-version."lodash._getnative"."3.9.0";
      "lodash.isarguments-3.0.3" = self.by-version."lodash.isarguments"."3.0.3";
      "lodash.isarray-3.0.3" = self.by-version."lodash.isarray"."3.0.3";
    };
    peerDependencies = [];
  };
  by-spec."lodash.keys"."~2.4.1" =
    self.by-version."lodash.keys"."2.4.1";
  by-version."lodash.keys"."2.4.1" = self.buildNodePackage {
    name = "lodash.keys-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.keys/-/lodash.keys-2.4.1.tgz";
      name = "lodash.keys-2.4.1.tgz";
      sha1 = "48dea46df8ff7632b10d706b8acb26591e2b3727";
    };
    deps = {
      "lodash._isnative-2.4.1" = self.by-version."lodash._isnative"."2.4.1";
      "lodash.isobject-2.4.1" = self.by-version."lodash.isobject"."2.4.1";
      "lodash._shimkeys-2.4.1" = self.by-version."lodash._shimkeys"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash.restparam"."^3.0.0" =
    self.by-version."lodash.restparam"."3.6.1";
  by-version."lodash.restparam"."3.6.1" = self.buildNodePackage {
    name = "lodash.restparam-3.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.restparam/-/lodash.restparam-3.6.1.tgz";
      name = "lodash.restparam-3.6.1.tgz";
      sha1 = "936a4e309ef330a7645ed4145986c85ae5b20805";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lodash.template"."^2.4.1" =
    self.by-version."lodash.template"."2.4.1";
  by-version."lodash.template"."2.4.1" = self.buildNodePackage {
    name = "lodash.template-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.template/-/lodash.template-2.4.1.tgz";
      name = "lodash.template-2.4.1.tgz";
      sha1 = "9e611007edf629129a974ab3c48b817b3e1cf20d";
    };
    deps = {
      "lodash.defaults-2.4.1" = self.by-version."lodash.defaults"."2.4.1";
      "lodash.escape-2.4.1" = self.by-version."lodash.escape"."2.4.1";
      "lodash._escapestringchar-2.4.1" = self.by-version."lodash._escapestringchar"."2.4.1";
      "lodash.keys-2.4.1" = self.by-version."lodash.keys"."2.4.1";
      "lodash._reinterpolate-2.4.1" = self.by-version."lodash._reinterpolate"."2.4.1";
      "lodash.templatesettings-2.4.1" = self.by-version."lodash.templatesettings"."2.4.1";
      "lodash.values-2.4.1" = self.by-version."lodash.values"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash.template"."^3.0.0" =
    self.by-version."lodash.template"."3.6.1";
  by-version."lodash.template"."3.6.1" = self.buildNodePackage {
    name = "lodash.template-3.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.template/-/lodash.template-3.6.1.tgz";
      name = "lodash.template-3.6.1.tgz";
      sha1 = "bd9d485f4518c285e8d564fe4c0c91c13dce6abe";
    };
    deps = {
      "lodash._basecopy-3.0.1" = self.by-version."lodash._basecopy"."3.0.1";
      "lodash._basetostring-3.0.0" = self.by-version."lodash._basetostring"."3.0.0";
      "lodash._basevalues-3.0.0" = self.by-version."lodash._basevalues"."3.0.0";
      "lodash._isiterateecall-3.0.9" = self.by-version."lodash._isiterateecall"."3.0.9";
      "lodash._reinterpolate-3.0.0" = self.by-version."lodash._reinterpolate"."3.0.0";
      "lodash.escape-3.0.0" = self.by-version."lodash.escape"."3.0.0";
      "lodash.keys-3.1.1" = self.by-version."lodash.keys"."3.1.1";
      "lodash.restparam-3.6.1" = self.by-version."lodash.restparam"."3.6.1";
      "lodash.templatesettings-3.1.0" = self.by-version."lodash.templatesettings"."3.1.0";
    };
    peerDependencies = [];
  };
  by-spec."lodash.templatesettings"."^3.0.0" =
    self.by-version."lodash.templatesettings"."3.1.0";
  by-version."lodash.templatesettings"."3.1.0" = self.buildNodePackage {
    name = "lodash.templatesettings-3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.templatesettings/-/lodash.templatesettings-3.1.0.tgz";
      name = "lodash.templatesettings-3.1.0.tgz";
      sha1 = "53852fd832b920605a2eb61919bcbbfb8f385bb6";
    };
    deps = {
      "lodash._reinterpolate-3.0.0" = self.by-version."lodash._reinterpolate"."3.0.0";
      "lodash.escape-3.0.0" = self.by-version."lodash.escape"."3.0.0";
    };
    peerDependencies = [];
  };
  by-spec."lodash.templatesettings"."~2.4.1" =
    self.by-version."lodash.templatesettings"."2.4.1";
  by-version."lodash.templatesettings"."2.4.1" = self.buildNodePackage {
    name = "lodash.templatesettings-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.templatesettings/-/lodash.templatesettings-2.4.1.tgz";
      name = "lodash.templatesettings-2.4.1.tgz";
      sha1 = "ea76c75d11eb86d4dbe89a83893bb861929ac699";
    };
    deps = {
      "lodash.escape-2.4.1" = self.by-version."lodash.escape"."2.4.1";
      "lodash._reinterpolate-2.4.1" = self.by-version."lodash._reinterpolate"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."lodash.values"."~2.4.1" =
    self.by-version."lodash.values"."2.4.1";
  by-version."lodash.values"."2.4.1" = self.buildNodePackage {
    name = "lodash.values-2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.values/-/lodash.values-2.4.1.tgz";
      name = "lodash.values-2.4.1.tgz";
      sha1 = "abf514436b3cb705001627978cbcf30b1280eea4";
    };
    deps = {
      "lodash.keys-2.4.1" = self.by-version."lodash.keys"."2.4.1";
    };
    peerDependencies = [];
  };
  by-spec."log4js"."^0.6.25" =
    self.by-version."log4js"."0.6.26";
  by-version."log4js"."0.6.26" = self.buildNodePackage {
    name = "log4js-0.6.26";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/log4js/-/log4js-0.6.26.tgz";
      name = "log4js-0.6.26.tgz";
      sha1 = "c728671b100ea6e7a7092a13df15ec6bcdf439fe";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "underscore-1.8.2" = self.by-version."underscore"."1.8.2";
    };
    peerDependencies = [];
  };
  by-spec."lolex"."1.1.0" =
    self.by-version."lolex"."1.1.0";
  by-version."lolex"."1.1.0" = self.buildNodePackage {
    name = "lolex-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lolex/-/lolex-1.1.0.tgz";
      name = "lolex-1.1.0.tgz";
      sha1 = "5dbbbc850395e7523c74b3586f7fbd2626d25b1b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.6.4";
  by-version."lru-cache"."2.6.4" = self.buildNodePackage {
    name = "lru-cache-2.6.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.6.4.tgz";
      name = "lru-cache-2.6.4.tgz";
      sha1 = "2675190ccd1b0701ec2f652a4d0d3d400d76c0dd";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lru-cache"."2.2.x" =
    self.by-version."lru-cache"."2.2.4";
  by-version."lru-cache"."2.2.4" = self.buildNodePackage {
    name = "lru-cache-2.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.2.4.tgz";
      name = "lru-cache-2.2.4.tgz";
      sha1 = "6c658619becf14031d0d0b594b16042ce4dc063d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."lru-queue"."0.1" =
    self.by-version."lru-queue"."0.1.0";
  by-version."lru-queue"."0.1.0" = self.buildNodePackage {
    name = "lru-queue-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-queue/-/lru-queue-0.1.0.tgz";
      name = "lru-queue-0.1.0.tgz";
      sha1 = "2738bd9f0d3cf4f84490c5736c48699ac632cda3";
    };
    deps = {
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
    };
    peerDependencies = [];
  };
  by-spec."map-obj"."^1.0.0" =
    self.by-version."map-obj"."1.0.1";
  by-version."map-obj"."1.0.1" = self.buildNodePackage {
    name = "map-obj-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/map-obj/-/map-obj-1.0.1.tgz";
      name = "map-obj-1.0.1.tgz";
      sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."map-stream"."~0.0.3" =
    self.by-version."map-stream"."0.0.6";
  by-version."map-stream"."0.0.6" = self.buildNodePackage {
    name = "map-stream-0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/map-stream/-/map-stream-0.0.6.tgz";
      name = "map-stream-0.0.6.tgz";
      sha1 = "d2ef4eb811a28644c7a8989985c69c2fdd496827";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."map-stream"."~0.1.0" =
    self.by-version."map-stream"."0.1.0";
  by-version."map-stream"."0.1.0" = self.buildNodePackage {
    name = "map-stream-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/map-stream/-/map-stream-0.1.0.tgz";
      name = "map-stream-0.1.0.tgz";
      sha1 = "e56aa94c4c8055a16404a0674b78f215f7c8e194";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."media-typer"."0.3.0" =
    self.by-version."media-typer"."0.3.0";
  by-version."media-typer"."0.3.0" = self.buildNodePackage {
    name = "media-typer-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
      name = "media-typer-0.3.0.tgz";
      sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."memoizee"."^0.3.8" =
    self.by-version."memoizee"."0.3.8";
  by-version."memoizee"."0.3.8" = self.buildNodePackage {
    name = "memoizee-0.3.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/memoizee/-/memoizee-0.3.8.tgz";
      name = "memoizee-0.3.8.tgz";
      sha1 = "b5faf419f02fafe3c2cc1cf5d3907c210fc7efdc";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "es6-weak-map-0.1.4" = self.by-version."es6-weak-map"."0.1.4";
      "event-emitter-0.3.3" = self.by-version."event-emitter"."0.3.3";
      "lru-queue-0.1.0" = self.by-version."lru-queue"."0.1.0";
      "next-tick-0.2.2" = self.by-version."next-tick"."0.2.2";
      "timers-ext-0.1.0" = self.by-version."timers-ext"."0.1.0";
    };
    peerDependencies = [];
  };
  by-spec."memory-cache"."0.0.5" =
    self.by-version."memory-cache"."0.0.5";
  by-version."memory-cache"."0.0.5" = self.buildNodePackage {
    name = "memory-cache-0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/memory-cache/-/memory-cache-0.0.5.tgz";
      name = "memory-cache-0.0.5.tgz";
      sha1 = "dbf99a56d7362c43eccaf39f0ba6f97f31a06786";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."meow"."*" =
    self.by-version."meow"."3.3.0";
  by-version."meow"."3.3.0" = self.buildNodePackage {
    name = "meow-3.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/meow/-/meow-3.3.0.tgz";
      name = "meow-3.3.0.tgz";
      sha1 = "f8777fd0db67f73d1de1beee08c97c8665efc6ed";
    };
    deps = {
      "camelcase-keys-1.0.0" = self.by-version."camelcase-keys"."1.0.0";
      "indent-string-1.2.1" = self.by-version."indent-string"."1.2.1";
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
      "object-assign-3.0.0" = self.by-version."object-assign"."3.0.0";
    };
    peerDependencies = [];
  };
  by-spec."merge-stream"."~0.1.5" =
    self.by-version."merge-stream"."0.1.7";
  by-version."merge-stream"."0.1.7" = self.buildNodePackage {
    name = "merge-stream-0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/merge-stream/-/merge-stream-0.1.7.tgz";
      name = "merge-stream-0.1.7.tgz";
      sha1 = "31debae13f9737ba17f7b4fbe33c16574c86fc79";
    };
    deps = {
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
    };
    peerDependencies = [];
  };
  "merge-stream" = self.by-version."merge-stream"."0.1.7";
  by-spec."method-override"."~2.3.3" =
    self.by-version."method-override"."2.3.3";
  by-version."method-override"."2.3.3" = self.buildNodePackage {
    name = "method-override-2.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/method-override/-/method-override-2.3.3.tgz";
      name = "method-override-2.3.3.tgz";
      sha1 = "5dc2186d26343bf33e7a2001a8aa3e50440e772b";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "methods-1.1.1" = self.by-version."methods"."1.1.1";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "vary-1.0.0" = self.by-version."vary"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."methods"."~1.1.1" =
    self.by-version."methods"."1.1.1";
  by-version."methods"."1.1.1" = self.buildNodePackage {
    name = "methods-1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/methods/-/methods-1.1.1.tgz";
      name = "methods-1.1.1.tgz";
      sha1 = "17ea6366066d00c58e375b8ec7dfd0453c89822a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."micromatch"."^2.1.5" =
    self.by-version."micromatch"."2.1.6";
  by-version."micromatch"."2.1.6" = self.buildNodePackage {
    name = "micromatch-2.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/micromatch/-/micromatch-2.1.6.tgz";
      name = "micromatch-2.1.6.tgz";
      sha1 = "51a65a9dcbfb92113292a071e04da35a81e9050e";
    };
    deps = {
      "arr-diff-1.0.1" = self.by-version."arr-diff"."1.0.1";
      "braces-1.8.0" = self.by-version."braces"."1.8.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "expand-brackets-0.1.1" = self.by-version."expand-brackets"."0.1.1";
      "filename-regex-2.0.0" = self.by-version."filename-regex"."2.0.0";
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
      "kind-of-1.1.0" = self.by-version."kind-of"."1.1.0";
      "object.omit-0.2.1" = self.by-version."object.omit"."0.2.1";
      "parse-glob-3.0.2" = self.by-version."parse-glob"."3.0.2";
      "regex-cache-0.4.2" = self.by-version."regex-cache"."0.4.2";
    };
    peerDependencies = [];
  };
  by-spec."mime"."1.3.4" =
    self.by-version."mime"."1.3.4";
  by-version."mime"."1.3.4" = self.buildNodePackage {
    name = "mime-1.3.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
      name = "mime-1.3.4.tgz";
      sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."mime"."^1.3.4" =
    self.by-version."mime"."1.3.4";
  by-spec."mime"."~1.2.11" =
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
  by-spec."mime-db".">= 1.13.0 < 2" =
    self.by-version."mime-db"."1.14.0";
  by-version."mime-db"."1.14.0" = self.buildNodePackage {
    name = "mime-db-1.14.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.14.0.tgz";
      name = "mime-db-1.14.0.tgz";
      sha1 = "d561f10b6ee66db51f94ae657a2951a74217ed83";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."mime-db"."~1.12.0" =
    self.by-version."mime-db"."1.12.0";
  by-version."mime-db"."1.12.0" = self.buildNodePackage {
    name = "mime-db-1.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.12.0.tgz";
      name = "mime-db-1.12.0.tgz";
      sha1 = "3d0c63180f458eb10d325aaa37d7c58ae312e9d7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."mime-db"."~1.14.0" =
    self.by-version."mime-db"."1.14.0";
  by-spec."mime-types"."^2.1.1" =
    self.by-version."mime-types"."2.1.2";
  by-version."mime-types"."2.1.2" = self.buildNodePackage {
    name = "mime-types-2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.1.2.tgz";
      name = "mime-types-2.1.2.tgz";
      sha1 = "6545ccd95afe77b9c655d81c2e6ceace36257227";
    };
    deps = {
      "mime-db-1.14.0" = self.by-version."mime-db"."1.14.0";
    };
    peerDependencies = [];
  };
  by-spec."mime-types"."~1.0.1" =
    self.by-version."mime-types"."1.0.2";
  by-version."mime-types"."1.0.2" = self.buildNodePackage {
    name = "mime-types-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-1.0.2.tgz";
      name = "mime-types-1.0.2.tgz";
      sha1 = "995ae1392ab8affcbfcb2641dd054e943c0d5dce";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."mime-types"."~2.0.1" =
    self.by-version."mime-types"."2.0.14";
  by-version."mime-types"."2.0.14" = self.buildNodePackage {
    name = "mime-types-2.0.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.0.14.tgz";
      name = "mime-types-2.0.14.tgz";
      sha1 = "310e159db23e077f8bb22b748dabfa4957140aa6";
    };
    deps = {
      "mime-db-1.12.0" = self.by-version."mime-db"."1.12.0";
    };
    peerDependencies = [];
  };
  by-spec."mime-types"."~2.1.1" =
    self.by-version."mime-types"."2.1.2";
  by-spec."minimatch"."^0.3.0" =
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
      "lru-cache-2.6.4" = self.by-version."lru-cache"."2.6.4";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."minimatch"."^2.0.1" =
    self.by-version."minimatch"."2.0.8";
  by-version."minimatch"."2.0.8" = self.buildNodePackage {
    name = "minimatch-2.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-2.0.8.tgz";
      name = "minimatch-2.0.8.tgz";
      sha1 = "0bc20f6bf3570a698ef0ddff902063c6cabda6bf";
    };
    deps = {
      "brace-expansion-1.1.0" = self.by-version."brace-expansion"."1.1.0";
    };
    peerDependencies = [];
  };
  by-spec."minimatch"."^2.0.7" =
    self.by-version."minimatch"."2.0.8";
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
      "lru-cache-2.6.4" = self.by-version."lru-cache"."2.6.4";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."minimatch"."~0.2.12" =
    self.by-version."minimatch"."0.2.14";
  by-spec."minimist"."0.0.8" =
    self.by-version."minimist"."0.0.8";
  by-version."minimist"."0.0.8" = self.buildNodePackage {
    name = "minimist-0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
      name = "minimist-0.0.8.tgz";
      sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."minimist"."^0.2.0" =
    self.by-version."minimist"."0.2.0";
  by-version."minimist"."0.2.0" = self.buildNodePackage {
    name = "minimist-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.2.0.tgz";
      name = "minimist-0.2.0.tgz";
      sha1 = "4dffe525dae2b864c66c2e23c6271d7afdecefce";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."minimist"."^1.1.0" =
    self.by-version."minimist"."1.1.1";
  by-version."minimist"."1.1.1" = self.buildNodePackage {
    name = "minimist-1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-1.1.1.tgz";
      name = "minimist-1.1.1.tgz";
      sha1 = "1bc2bc71658cdca5712475684363615b0b4f695b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."minimist"."~0.0.1" =
    self.by-version."minimist"."0.0.10";
  by-version."minimist"."0.0.10" = self.buildNodePackage {
    name = "minimist-0.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.10.tgz";
      name = "minimist-0.0.10.tgz";
      sha1 = "de3f98543dbf96082be48ad1a0c7cda836301dcf";
    };
    deps = {
    };
    peerDependencies = [];
  };
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
  by-spec."mkdirp"."0.5.0" =
    self.by-version."mkdirp"."0.5.0";
  by-version."mkdirp"."0.5.0" = self.buildNodePackage {
    name = "mkdirp-0.5.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.0.tgz";
      name = "mkdirp-0.5.0.tgz";
      sha1 = "1d73076a6df986cd9344e15e71fcc05a4c9abf12";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    peerDependencies = [];
  };
  "mkdirp" = self.by-version."mkdirp"."0.5.0";
  by-spec."mkdirp"."0.x.x" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = self.buildNodePackage {
    name = "mkdirp-0.5.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
      name = "mkdirp-0.5.1.tgz";
      sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    peerDependencies = [];
  };
  by-spec."mkdirp"."^0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."~0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mocha"."*" =
    self.by-version."mocha"."2.2.5";
  by-version."mocha"."2.2.5" = self.buildNodePackage {
    name = "mocha-2.2.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mocha/-/mocha-2.2.5.tgz";
      name = "mocha-2.2.5.tgz";
      sha1 = "d3b72a4fe49ec9439353f1ac893dbc430d993140";
    };
    deps = {
      "commander-2.3.0" = self.by-version."commander"."2.3.0";
      "debug-2.0.0" = self.by-version."debug"."2.0.0";
      "diff-1.4.0" = self.by-version."diff"."1.4.0";
      "escape-string-regexp-1.0.2" = self.by-version."escape-string-regexp"."1.0.2";
      "glob-3.2.3" = self.by-version."glob"."3.2.3";
      "growl-1.8.1" = self.by-version."growl"."1.8.1";
      "jade-0.26.3" = self.by-version."jade"."0.26.3";
      "mkdirp-0.5.0" = self.by-version."mkdirp"."0.5.0";
      "supports-color-1.2.1" = self.by-version."supports-color"."1.2.1";
    };
    peerDependencies = [];
  };
  by-spec."morgan"."~1.6.0" =
    self.by-version."morgan"."1.6.0";
  by-version."morgan"."1.6.0" = self.buildNodePackage {
    name = "morgan-1.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/morgan/-/morgan-1.6.0.tgz";
      name = "morgan-1.6.0.tgz";
      sha1 = "1a56ee781e2349a741ab0adf34f16ce4f25b1806";
    };
    deps = {
      "basic-auth-1.0.2" = self.by-version."basic-auth"."1.0.2";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "on-headers-1.0.0" = self.by-version."on-headers"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."ms"."0.6.2" =
    self.by-version."ms"."0.6.2";
  by-version."ms"."0.6.2" = self.buildNodePackage {
    name = "ms-0.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.6.2.tgz";
      name = "ms-0.6.2.tgz";
      sha1 = "d89c2124c6fdc1353d65a8b77bf1aac4b193708c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
      name = "ms-0.7.1.tgz";
      sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."multimatch"."^0.3.0" =
    self.by-version."multimatch"."0.3.0";
  by-version."multimatch"."0.3.0" = self.buildNodePackage {
    name = "multimatch-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/multimatch/-/multimatch-0.3.0.tgz";
      name = "multimatch-0.3.0.tgz";
      sha1 = "603dbc3fe3281d338094a1e1b93a8b5f2be038da";
    };
    deps = {
      "array-differ-0.1.0" = self.by-version."array-differ"."0.1.0";
      "array-union-0.1.0" = self.by-version."array-union"."0.1.0";
      "minimatch-0.3.0" = self.by-version."minimatch"."0.3.0";
    };
    peerDependencies = [];
  };
  by-spec."multiparty"."3.3.2" =
    self.by-version."multiparty"."3.3.2";
  by-version."multiparty"."3.3.2" = self.buildNodePackage {
    name = "multiparty-3.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/multiparty/-/multiparty-3.3.2.tgz";
      name = "multiparty-3.3.2.tgz";
      sha1 = "35de6804dc19643e5249f3d3e3bdc6c8ce301d3f";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "stream-counter-0.2.0" = self.by-version."stream-counter"."0.2.0";
    };
    peerDependencies = [];
  };
  by-spec."multipipe"."^0.1.0" =
    self.by-version."multipipe"."0.1.2";
  by-version."multipipe"."0.1.2" = self.buildNodePackage {
    name = "multipipe-0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/multipipe/-/multipipe-0.1.2.tgz";
      name = "multipipe-0.1.2.tgz";
      sha1 = "2a8f2ddf70eed564dff2d57f1e1a137d9f05078b";
    };
    deps = {
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
    };
    peerDependencies = [];
  };
  by-spec."multipipe"."^0.1.2" =
    self.by-version."multipipe"."0.1.2";
  by-spec."nan"."1.4.x" =
    self.by-version."nan"."1.4.3";
  by-version."nan"."1.4.3" = self.buildNodePackage {
    name = "nan-1.4.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-1.4.3.tgz";
      name = "nan-1.4.3.tgz";
      sha1 = "c56b5404698063696f597435f9163c312aea5009";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."nan"."^1.8.0" =
    self.by-version."nan"."1.8.4";
  by-version."nan"."1.8.4" = self.buildNodePackage {
    name = "nan-1.8.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-1.8.4.tgz";
      name = "nan-1.8.4.tgz";
      sha1 = "3c76b5382eab33e44b758d2813ca9d92e9342f34";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."nan"."~0.3.0" =
    self.by-version."nan"."0.3.2";
  by-version."nan"."0.3.2" = self.buildNodePackage {
    name = "nan-0.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-0.3.2.tgz";
      name = "nan-0.3.2.tgz";
      sha1 = "0df1935cab15369075ef160ad2894107aa14dc2d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."nan"."~1.0.0" =
    self.by-version."nan"."1.0.0";
  by-version."nan"."1.0.0" = self.buildNodePackage {
    name = "nan-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-1.0.0.tgz";
      name = "nan-1.0.0.tgz";
      sha1 = "ae24f8850818d662fcab5acf7f3b95bfaa2ccf38";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."ncp"."0.4.x" =
    self.by-version."ncp"."0.4.2";
  by-version."ncp"."0.4.2" = self.buildNodePackage {
    name = "ncp-0.4.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/ncp/-/ncp-0.4.2.tgz";
      name = "ncp-0.4.2.tgz";
      sha1 = "abcc6cbd3ec2ed2a729ff6e7c1fa8f01784a8574";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."negotiator"."0.5.3" =
    self.by-version."negotiator"."0.5.3";
  by-version."negotiator"."0.5.3" = self.buildNodePackage {
    name = "negotiator-0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/negotiator/-/negotiator-0.5.3.tgz";
      name = "negotiator-0.5.3.tgz";
      sha1 = "269d5c476810ec92edbe7b6c2f28316384f9a7e8";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."next-tick"."~0.2.2" =
    self.by-version."next-tick"."0.2.2";
  by-version."next-tick"."0.2.2" = self.buildNodePackage {
    name = "next-tick-0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/next-tick/-/next-tick-0.2.2.tgz";
      name = "next-tick-0.2.2.tgz";
      sha1 = "75da4a927ee5887e39065880065b7336413b310d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."node-uuid"."~1.4.0" =
    self.by-version."node-uuid"."1.4.3";
  by-version."node-uuid"."1.4.3" = self.buildNodePackage {
    name = "node-uuid-1.4.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-uuid/-/node-uuid-1.4.3.tgz";
      name = "node-uuid-1.4.3.tgz";
      sha1 = "319bb7a56e7cb63f00b5c0cd7851cd4b4ddf1df9";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."number-is-nan"."^1.0.0" =
    self.by-version."number-is-nan"."1.0.0";
  by-version."number-is-nan"."1.0.0" = self.buildNodePackage {
    name = "number-is-nan-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.0.tgz";
      name = "number-is-nan-1.0.0.tgz";
      sha1 = "c020f529c5282adfdd233d91d4b181c3d686dc4b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."oauth-sign"."~0.3.0" =
    self.by-version."oauth-sign"."0.3.0";
  by-version."oauth-sign"."0.3.0" = self.buildNodePackage {
    name = "oauth-sign-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.3.0.tgz";
      name = "oauth-sign-0.3.0.tgz";
      sha1 = "cb540f93bb2b22a7d5941691a288d60e8ea9386e";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."oauth-sign"."~0.8.0" =
    self.by-version."oauth-sign"."0.8.0";
  by-version."oauth-sign"."0.8.0" = self.buildNodePackage {
    name = "oauth-sign-0.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.0.tgz";
      name = "oauth-sign-0.8.0.tgz";
      sha1 = "938fdc875765ba527137d8aec9d178e24debc553";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."object-assign"."^3.0.0" =
    self.by-version."object-assign"."3.0.0";
  by-version."object-assign"."3.0.0" = self.buildNodePackage {
    name = "object-assign-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-3.0.0.tgz";
      name = "object-assign-3.0.0.tgz";
      sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."object-component"."0.0.3" =
    self.by-version."object-component"."0.0.3";
  by-version."object-component"."0.0.3" = self.buildNodePackage {
    name = "object-component-0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-component/-/object-component-0.0.3.tgz";
      name = "object-component-0.0.3.tgz";
      sha1 = "f0c69aa50efc95b866c186f400a33769cb2f1291";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."object-keys"."1.0.1" =
    self.by-version."object-keys"."1.0.1";
  by-version."object-keys"."1.0.1" = self.buildNodePackage {
    name = "object-keys-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-keys/-/object-keys-1.0.1.tgz";
      name = "object-keys-1.0.1.tgz";
      sha1 = "55802e85842c26bbb5ebbc157abf3be302569ba8";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."object-keys"."~0.4.0" =
    self.by-version."object-keys"."0.4.0";
  by-version."object-keys"."0.4.0" = self.buildNodePackage {
    name = "object-keys-0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-keys/-/object-keys-0.4.0.tgz";
      name = "object-keys-0.4.0.tgz";
      sha1 = "28a6aae7428dd2c3a92f3d95f21335dd204e0336";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."object.omit"."^0.2.1" =
    self.by-version."object.omit"."0.2.1";
  by-version."object.omit"."0.2.1" = self.buildNodePackage {
    name = "object.omit-0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object.omit/-/object.omit-0.2.1.tgz";
      name = "object.omit-0.2.1.tgz";
      sha1 = "ca9af6631df6883fe61bae74df82a4fbc9df2e92";
    };
    deps = {
      "for-own-0.1.3" = self.by-version."for-own"."0.1.3";
      "isobject-0.2.0" = self.by-version."isobject"."0.2.0";
    };
    peerDependencies = [];
  };
  by-spec."on-finished"."~2.3.0" =
    self.by-version."on-finished"."2.3.0";
  by-version."on-finished"."2.3.0" = self.buildNodePackage {
    name = "on-finished-2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
      name = "on-finished-2.3.0.tgz";
      sha1 = "20f1336481b083cd75337992a16971aa2d906947";
    };
    deps = {
      "ee-first-1.1.1" = self.by-version."ee-first"."1.1.1";
    };
    peerDependencies = [];
  };
  by-spec."on-headers"."~1.0.0" =
    self.by-version."on-headers"."1.0.0";
  by-version."on-headers"."1.0.0" = self.buildNodePackage {
    name = "on-headers-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/on-headers/-/on-headers-1.0.0.tgz";
      name = "on-headers-1.0.0.tgz";
      sha1 = "2c75b5da4375513d0161c6052e7fcbe4953fca5d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.3.2";
  by-version."once"."1.3.2" = self.buildNodePackage {
    name = "once-1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.3.2.tgz";
      name = "once-1.3.2.tgz";
      sha1 = "d8feeca93b039ec1dcdee7741c92bdac5e28081b";
    };
    deps = {
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."once"."~1.3.0" =
    self.by-version."once"."1.3.2";
  by-spec."optimist"."0.6.x" =
    self.by-version."optimist"."0.6.1";
  by-version."optimist"."0.6.1" = self.buildNodePackage {
    name = "optimist-0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.6.1.tgz";
      name = "optimist-0.6.1.tgz";
      sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
      "minimist-0.0.10" = self.by-version."minimist"."0.0.10";
    };
    peerDependencies = [];
  };
  by-spec."optimist"."^0.6.1" =
    self.by-version."optimist"."0.6.1";
  by-spec."optimist"."~0.3.5" =
    self.by-version."optimist"."0.3.7";
  by-version."optimist"."0.3.7" = self.buildNodePackage {
    name = "optimist-0.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.3.7.tgz";
      name = "optimist-0.3.7.tgz";
      sha1 = "c90941ad59e4273328923074d2cf2e7cbc6ec0d9";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
    };
    peerDependencies = [];
  };
  by-spec."options".">=0.0.5" =
    self.by-version."options"."0.0.6";
  by-version."options"."0.0.6" = self.buildNodePackage {
    name = "options-0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/options/-/options-0.0.6.tgz";
      name = "options-0.0.6.tgz";
      sha1 = "ec22d312806bb53e731773e7cdaefcf1c643128f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."orchestrator"."^0.3.0" =
    self.by-version."orchestrator"."0.3.7";
  by-version."orchestrator"."0.3.7" = self.buildNodePackage {
    name = "orchestrator-0.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/orchestrator/-/orchestrator-0.3.7.tgz";
      name = "orchestrator-0.3.7.tgz";
      sha1 = "c45064e22c5a2a7b99734f409a95ffedc7d3c3df";
    };
    deps = {
      "end-of-stream-0.1.5" = self.by-version."end-of-stream"."0.1.5";
      "sequencify-0.0.7" = self.by-version."sequencify"."0.0.7";
      "stream-consume-0.1.0" = self.by-version."stream-consume"."0.1.0";
    };
    peerDependencies = [];
  };
  by-spec."ordered-read-streams"."^0.1.0" =
    self.by-version."ordered-read-streams"."0.1.0";
  by-version."ordered-read-streams"."0.1.0" = self.buildNodePackage {
    name = "ordered-read-streams-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ordered-read-streams/-/ordered-read-streams-0.1.0.tgz";
      name = "ordered-read-streams-0.1.0.tgz";
      sha1 = "fd565a9af8eb4473ba69b6ed8a34352cb552f126";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."os-homedir"."^1.0.0" =
    self.by-version."os-homedir"."1.0.0";
  by-version."os-homedir"."1.0.0" = self.buildNodePackage {
    name = "os-homedir-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-homedir/-/os-homedir-1.0.0.tgz";
      name = "os-homedir-1.0.0.tgz";
      sha1 = "e37078bc61b5869063053897257e39ec1261b702";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."parse-glob"."^3.0.0" =
    self.by-version."parse-glob"."3.0.2";
  by-version."parse-glob"."3.0.2" = self.buildNodePackage {
    name = "parse-glob-3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-glob/-/parse-glob-3.0.2.tgz";
      name = "parse-glob-3.0.2.tgz";
      sha1 = "8f68833a1af801bbcbc1d0a09b79755d6b1198d9";
    };
    deps = {
      "glob-base-0.2.0" = self.by-version."glob-base"."0.2.0";
      "is-dotfile-1.0.1" = self.by-version."is-dotfile"."1.0.1";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
    };
    peerDependencies = [];
  };
  by-spec."parsejson"."0.0.1" =
    self.by-version."parsejson"."0.0.1";
  by-version."parsejson"."0.0.1" = self.buildNodePackage {
    name = "parsejson-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parsejson/-/parsejson-0.0.1.tgz";
      name = "parsejson-0.0.1.tgz";
      sha1 = "9b10c6c0d825ab589e685153826de0a3ba278bcc";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."parseqs"."0.0.2" =
    self.by-version."parseqs"."0.0.2";
  by-version."parseqs"."0.0.2" = self.buildNodePackage {
    name = "parseqs-0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseqs/-/parseqs-0.0.2.tgz";
      name = "parseqs-0.0.2.tgz";
      sha1 = "9dfe70b2cddac388bde4f35b1f240fa58adbe6c7";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."parseuri"."0.0.2" =
    self.by-version."parseuri"."0.0.2";
  by-version."parseuri"."0.0.2" = self.buildNodePackage {
    name = "parseuri-0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseuri/-/parseuri-0.0.2.tgz";
      name = "parseuri-0.0.2.tgz";
      sha1 = "db41878f2d6964718be870b3140973d8093be156";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."parseuri"."0.0.4" =
    self.by-version."parseuri"."0.0.4";
  by-version."parseuri"."0.0.4" = self.buildNodePackage {
    name = "parseuri-0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseuri/-/parseuri-0.0.4.tgz";
      name = "parseuri-0.0.4.tgz";
      sha1 = "806582a39887e1ea18dd5e2fe0e01902268e9350";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."parseurl"."~1.3.0" =
    self.by-version."parseurl"."1.3.0";
  by-version."parseurl"."1.3.0" = self.buildNodePackage {
    name = "parseurl-1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseurl/-/parseurl-1.3.0.tgz";
      name = "parseurl-1.3.0.tgz";
      sha1 = "b58046db4223e145afa76009e61bac87cc2281b3";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."path-is-absolute"."^1.0.0" =
    self.by-version."path-is-absolute"."1.0.0";
  by-version."path-is-absolute"."1.0.0" = self.buildNodePackage {
    name = "path-is-absolute-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.0.tgz";
      name = "path-is-absolute-1.0.0.tgz";
      sha1 = "263dada66ab3f2fb10bf7f9d24dd8f3e570ef912";
    };
    deps = {
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
  by-spec."pause-stream"."0.0.11" =
    self.by-version."pause-stream"."0.0.11";
  by-version."pause-stream"."0.0.11" = self.buildNodePackage {
    name = "pause-stream-0.0.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pause-stream/-/pause-stream-0.0.11.tgz";
      name = "pause-stream-0.0.11.tgz";
      sha1 = "fe5a34b0cbce12b5aa6a2b403ee2e73b602f1445";
    };
    deps = {
      "through-2.3.7" = self.by-version."through"."2.3.7";
    };
    peerDependencies = [];
  };
  by-spec."pkginfo"."0.3.x" =
    self.by-version."pkginfo"."0.3.0";
  by-version."pkginfo"."0.3.0" = self.buildNodePackage {
    name = "pkginfo-0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pkginfo/-/pkginfo-0.3.0.tgz";
      name = "pkginfo-0.3.0.tgz";
      sha1 = "726411401039fe9b009eea86614295d5f3a54276";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."policyfile"."0.0.4" =
    self.by-version."policyfile"."0.0.4";
  by-version."policyfile"."0.0.4" = self.buildNodePackage {
    name = "policyfile-0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/policyfile/-/policyfile-0.0.4.tgz";
      name = "policyfile-0.0.4.tgz";
      sha1 = "d6b82ead98ae79ebe228e2daf5903311ec982e4d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."preserve"."^0.2.0" =
    self.by-version."preserve"."0.2.0";
  by-version."preserve"."0.2.0" = self.buildNodePackage {
    name = "preserve-0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz";
      name = "preserve-0.2.0.tgz";
      sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."pretty-hrtime"."^1.0.0" =
    self.by-version."pretty-hrtime"."1.0.0";
  by-version."pretty-hrtime"."1.0.0" = self.buildNodePackage {
    name = "pretty-hrtime-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pretty-hrtime/-/pretty-hrtime-1.0.0.tgz";
      name = "pretty-hrtime-1.0.0.tgz";
      sha1 = "f6e6a522d3e60704522bf0dbe6856ed20e75e4dc";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."process-nextick-args"."~1.0.0" =
    self.by-version."process-nextick-args"."1.0.1";
  by-version."process-nextick-args"."1.0.1" = self.buildNodePackage {
    name = "process-nextick-args-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.1.tgz";
      name = "process-nextick-args-1.0.1.tgz";
      sha1 = "918a5ab4a7744340b83ff416101ba53c5c531879";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."q"."^1.4.1" =
    self.by-version."q"."1.4.1";
  by-version."q"."1.4.1" = self.buildNodePackage {
    name = "q-1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-1.4.1.tgz";
      name = "q-1.4.1.tgz";
      sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."qs"."2.4.2" =
    self.by-version."qs"."2.4.2";
  by-version."qs"."2.4.2" = self.buildNodePackage {
    name = "qs-2.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-2.4.2.tgz";
      name = "qs-2.4.2.tgz";
      sha1 = "f7ce788e5777df0b5010da7f7c4e73ba32470f5a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."qs"."~1.0.0" =
    self.by-version."qs"."1.0.2";
  by-version."qs"."1.0.2" = self.buildNodePackage {
    name = "qs-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-1.0.2.tgz";
      name = "qs-1.0.2.tgz";
      sha1 = "50a93e2b5af6691c31bcea5dae78ee6ea1903768";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."qs"."~3.1.0" =
    self.by-version."qs"."3.1.0";
  by-version."qs"."3.1.0" = self.buildNodePackage {
    name = "qs-3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-3.1.0.tgz";
      name = "qs-3.1.0.tgz";
      sha1 = "d0e9ae745233a12dc43fb4f3055bba446261153c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."randomatic"."^1.1.0" =
    self.by-version."randomatic"."1.1.0";
  by-version."randomatic"."1.1.0" = self.buildNodePackage {
    name = "randomatic-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/randomatic/-/randomatic-1.1.0.tgz";
      name = "randomatic-1.1.0.tgz";
      sha1 = "2ca36b9f93747aac985eb242749af88b45d5d42d";
    };
    deps = {
      "is-number-1.1.2" = self.by-version."is-number"."1.1.2";
      "kind-of-1.1.0" = self.by-version."kind-of"."1.1.0";
    };
    peerDependencies = [];
  };
  by-spec."range-parser"."~1.0.2" =
    self.by-version."range-parser"."1.0.2";
  by-version."range-parser"."1.0.2" = self.buildNodePackage {
    name = "range-parser-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/range-parser/-/range-parser-1.0.2.tgz";
      name = "range-parser-1.0.2.tgz";
      sha1 = "06a12a42e5131ba8e457cd892044867f2344e549";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."raw-body"."~2.1.1" =
    self.by-version."raw-body"."2.1.1";
  by-version."raw-body"."2.1.1" = self.buildNodePackage {
    name = "raw-body-2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/raw-body/-/raw-body-2.1.1.tgz";
      name = "raw-body-2.1.1.tgz";
      sha1 = "9b6378223aa2e2ef41348bae55264e44f2850417";
    };
    deps = {
      "bytes-2.1.0" = self.by-version."bytes"."2.1.0";
      "iconv-lite-0.4.10" = self.by-version."iconv-lite"."0.4.10";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."readable-stream".">=1.0.33-1 <1.1.0-0" =
    self.by-version."readable-stream"."1.0.33";
  by-version."readable-stream"."1.0.33" = self.buildNodePackage {
    name = "readable-stream-1.0.33";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.33.tgz";
      name = "readable-stream-1.0.33.tgz";
      sha1 = "3a360dd66c1b1d7fd4705389860eda1d0f61126c";
    };
    deps = {
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    peerDependencies = [];
  };
  by-spec."readable-stream"."^1.0.26-2" =
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
  by-spec."readable-stream"."^1.0.26-4" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."~1.0.17" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.2" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.26" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.26-2" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.33" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.1.8" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."~1.1.9" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."~2.0.0" =
    self.by-version."readable-stream"."2.0.1";
  by-version."readable-stream"."2.0.1" = self.buildNodePackage {
    name = "readable-stream-2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-2.0.1.tgz";
      name = "readable-stream-2.0.1.tgz";
      sha1 = "633479b7bd2fbe7a1e869825b40a0b333b9f2bfc";
    };
    deps = {
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "process-nextick-args-1.0.1" = self.by-version."process-nextick-args"."1.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.1" = self.by-version."util-deprecate"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."readdirp"."^1.3.0" =
    self.by-version."readdirp"."1.3.0";
  by-version."readdirp"."1.3.0" = self.buildNodePackage {
    name = "readdirp-1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readdirp/-/readdirp-1.3.0.tgz";
      name = "readdirp-1.3.0.tgz";
      sha1 = "eaf1a9b463be9a8190fc9ae163aa1ac934aa340b";
    };
    deps = {
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    peerDependencies = [];
  };
  by-spec."rechoir"."^0.6.0" =
    self.by-version."rechoir"."0.6.1";
  by-version."rechoir"."0.6.1" = self.buildNodePackage {
    name = "rechoir-0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rechoir/-/rechoir-0.6.1.tgz";
      name = "rechoir-0.6.1.tgz";
      sha1 = "462beb9fe212d568a0d1282447b09de364e5f435";
    };
    deps = {
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
    };
    peerDependencies = [];
  };
  by-spec."redis"."0.7.3" =
    self.by-version."redis"."0.7.3";
  by-version."redis"."0.7.3" = self.buildNodePackage {
    name = "redis-0.7.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redis/-/redis-0.7.3.tgz";
      name = "redis-0.7.3.tgz";
      sha1 = "ee57b7a44d25ec1594e44365d8165fa7d1d4811a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."regex-cache"."^0.4.0" =
    self.by-version."regex-cache"."0.4.2";
  by-version."regex-cache"."0.4.2" = self.buildNodePackage {
    name = "regex-cache-0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/regex-cache/-/regex-cache-0.4.2.tgz";
      name = "regex-cache-0.4.2.tgz";
      sha1 = "6e4f89c266bc03c33fd129c062184687f4663487";
    };
    deps = {
      "is-equal-shallow-0.1.3" = self.by-version."is-equal-shallow"."0.1.3";
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    peerDependencies = [];
  };
  by-spec."repeat-element"."^1.1.0" =
    self.by-version."repeat-element"."1.1.2";
  by-version."repeat-element"."1.1.2" = self.buildNodePackage {
    name = "repeat-element-1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-element/-/repeat-element-1.1.2.tgz";
      name = "repeat-element-1.1.2.tgz";
      sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."repeat-string"."^0.2.2" =
    self.by-version."repeat-string"."0.2.2";
  by-version."repeat-string"."0.2.2" = self.buildNodePackage {
    name = "repeat-string-0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-string/-/repeat-string-0.2.2.tgz";
      name = "repeat-string-0.2.2.tgz";
      sha1 = "c7a8d3236068362059a7e4651fc6884e8b1fb4ae";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."repeat-string"."^1.5.2" =
    self.by-version."repeat-string"."1.5.2";
  by-version."repeat-string"."1.5.2" = self.buildNodePackage {
    name = "repeat-string-1.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-string/-/repeat-string-1.5.2.tgz";
      name = "repeat-string-1.5.2.tgz";
      sha1 = "21065f70727ad053a0dd5e957ac9e00c7560d90a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."repeating"."^1.1.0" =
    self.by-version."repeating"."1.1.3";
  by-version."repeating"."1.1.3" = self.buildNodePackage {
    name = "repeating-1.1.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeating/-/repeating-1.1.3.tgz";
      name = "repeating-1.1.3.tgz";
      sha1 = "3d4114218877537494f97f77f9785fab810fa4ac";
    };
    deps = {
      "is-finite-1.0.1" = self.by-version."is-finite"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."replace-ext"."0.0.1" =
    self.by-version."replace-ext"."0.0.1";
  by-version."replace-ext"."0.0.1" = self.buildNodePackage {
    name = "replace-ext-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/replace-ext/-/replace-ext-0.0.1.tgz";
      name = "replace-ext-0.0.1.tgz";
      sha1 = "29bbd92078a739f0bcce2b4ee41e837953522924";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."replacestream"."0.1.3" =
    self.by-version."replacestream"."0.1.3";
  by-version."replacestream"."0.1.3" = self.buildNodePackage {
    name = "replacestream-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/replacestream/-/replacestream-0.1.3.tgz";
      name = "replacestream-0.1.3.tgz";
      sha1 = "e018d3a37724600ccd0c005990d8a21b7b54ff34";
    };
    deps = {
      "through-2.3.7" = self.by-version."through"."2.3.7";
    };
    peerDependencies = [];
  };
  by-spec."request"."^2.51.0" =
    self.by-version."request"."2.58.0";
  by-version."request"."2.58.0" = self.buildNodePackage {
    name = "request-2.58.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.58.0.tgz";
      name = "request-2.58.0.tgz";
      sha1 = "b5f49c0b94aab7fad388612a1fb6ad03b6cc1580";
    };
    deps = {
      "bl-0.9.4" = self.by-version."bl"."0.9.4";
      "caseless-0.10.0" = self.by-version."caseless"."0.10.0";
      "extend-2.0.1" = self.by-version."extend"."2.0.1";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-1.0.0-rc1" = self.by-version."form-data"."1.0.0-rc1";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.0.14" = self.by-version."mime-types"."2.0.14";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "qs-3.1.0" = self.by-version."qs"."3.1.0";
      "tunnel-agent-0.4.0" = self.by-version."tunnel-agent"."0.4.0";
      "tough-cookie-2.0.0" = self.by-version."tough-cookie"."2.0.0";
      "http-signature-0.11.0" = self.by-version."http-signature"."0.11.0";
      "oauth-sign-0.8.0" = self.by-version."oauth-sign"."0.8.0";
      "hawk-2.3.1" = self.by-version."hawk"."2.3.1";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
      "stringstream-0.0.4" = self.by-version."stringstream"."0.0.4";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "har-validator-1.8.0" = self.by-version."har-validator"."1.8.0";
    };
    peerDependencies = [];
  };
  "request" = self.by-version."request"."2.58.0";
  by-spec."request"."~2.40.0" =
    self.by-version."request"."2.40.0";
  by-version."request"."2.40.0" = self.buildNodePackage {
    name = "request-2.40.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.40.0.tgz";
      name = "request-2.40.0.tgz";
      sha1 = "4dd670f696f1e6e842e66b4b5e839301ab9beb67";
    };
    deps = {
      "qs-1.0.2" = self.by-version."qs"."1.0.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-1.0.2" = self.by-version."mime-types"."1.0.2";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "tough-cookie-2.0.0" = self.by-version."tough-cookie"."2.0.0";
      "form-data-0.1.4" = self.by-version."form-data"."0.1.4";
      "tunnel-agent-0.4.0" = self.by-version."tunnel-agent"."0.4.0";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "oauth-sign-0.3.0" = self.by-version."oauth-sign"."0.3.0";
      "hawk-1.1.1" = self.by-version."hawk"."1.1.1";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
      "stringstream-0.0.4" = self.by-version."stringstream"."0.0.4";
    };
    peerDependencies = [];
  };
  by-spec."resolve"."^1.1.6" =
    self.by-version."resolve"."1.1.6";
  by-version."resolve"."1.1.6" = self.buildNodePackage {
    name = "resolve-1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/resolve/-/resolve-1.1.6.tgz";
      name = "resolve-1.1.6.tgz";
      sha1 = "d3492ad054ca800f5befa612e61beac1eec98f8f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."response-time"."~2.3.1" =
    self.by-version."response-time"."2.3.1";
  by-version."response-time"."2.3.1" = self.buildNodePackage {
    name = "response-time-2.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/response-time/-/response-time-2.3.1.tgz";
      name = "response-time-2.3.1.tgz";
      sha1 = "2bde19181de6c81ab95e3207a28d61d965b31797";
    };
    deps = {
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "on-headers-1.0.0" = self.by-version."on-headers"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."rimraf"."2.x.x" =
    self.by-version."rimraf"."2.4.0";
  by-version."rimraf"."2.4.0" = self.buildNodePackage {
    name = "rimraf-2.4.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.4.0.tgz";
      name = "rimraf-2.4.0.tgz";
      sha1 = "40ba0416037d8511ecb50f6b07cf8d18e658a864";
    };
    deps = {
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
    };
    peerDependencies = [];
  };
  by-spec."rimraf"."^2.2.8" =
    self.by-version."rimraf"."2.4.0";
  by-spec."rimraf"."^2.3.3" =
    self.by-version."rimraf"."2.4.0";
  by-spec."rndm"."~1.1.0" =
    self.by-version."rndm"."1.1.0";
  by-version."rndm"."1.1.0" = self.buildNodePackage {
    name = "rndm-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rndm/-/rndm-1.1.0.tgz";
      name = "rndm-1.1.0.tgz";
      sha1 = "01d1a8f1fb9b471181925b627b9049bf33074574";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."run-sequence"."~0.3.6" =
    self.by-version."run-sequence"."0.3.7";
  by-version."run-sequence"."0.3.7" = self.buildNodePackage {
    name = "run-sequence-0.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/run-sequence/-/run-sequence-0.3.7.tgz";
      name = "run-sequence-0.3.7.tgz";
      sha1 = "a5d7a09d1b38bec8e8c55dc94082d3ae6016a623";
    };
    deps = {
      "chalk-1.0.0" = self.by-version."chalk"."1.0.0";
    };
    peerDependencies = [];
  };
  "run-sequence" = self.by-version."run-sequence"."0.3.7";
  by-spec."samsam"."1.1.2" =
    self.by-version."samsam"."1.1.2";
  by-version."samsam"."1.1.2" = self.buildNodePackage {
    name = "samsam-1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/samsam/-/samsam-1.1.2.tgz";
      name = "samsam-1.1.2.tgz";
      sha1 = "bec11fdc83a9fda063401210e40176c3024d1567";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."samsam"."~1.1" =
    self.by-version."samsam"."1.1.2";
  by-spec."scmp"."1.0.0" =
    self.by-version."scmp"."1.0.0";
  by-version."scmp"."1.0.0" = self.buildNodePackage {
    name = "scmp-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/scmp/-/scmp-1.0.0.tgz";
      name = "scmp-1.0.0.tgz";
      sha1 = "a0b272c3fc7292f77115646f00618b0262514e04";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."semver"."^4.1.0" =
    self.by-version."semver"."4.3.6";
  by-version."semver"."4.3.6" = self.buildNodePackage {
    name = "semver-4.3.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-4.3.6.tgz";
      name = "semver-4.3.6.tgz";
      sha1 = "300bc6e0e86374f7ba61068b5b1ecd57fc6532da";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."semver"."~4.3.3" =
    self.by-version."semver"."4.3.6";
  by-spec."send"."0.13.0" =
    self.by-version."send"."0.13.0";
  by-version."send"."0.13.0" = self.buildNodePackage {
    name = "send-0.13.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/send/-/send-0.13.0.tgz";
      name = "send-0.13.0.tgz";
      sha1 = "518f921aeb0560aec7dcab2990b14cf6f3cce5de";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "destroy-1.0.3" = self.by-version."destroy"."1.0.3";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "range-parser-1.0.2" = self.by-version."range-parser"."1.0.2";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    peerDependencies = [];
  };
  by-spec."sequencify"."~0.0.7" =
    self.by-version."sequencify"."0.0.7";
  by-version."sequencify"."0.0.7" = self.buildNodePackage {
    name = "sequencify-0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sequencify/-/sequencify-0.0.7.tgz";
      name = "sequencify-0.0.7.tgz";
      sha1 = "90cff19d02e07027fd767f5ead3e7b95d1e7380c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."serve-favicon"."~2.3.0" =
    self.by-version."serve-favicon"."2.3.0";
  by-version."serve-favicon"."2.3.0" = self.buildNodePackage {
    name = "serve-favicon-2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-favicon/-/serve-favicon-2.3.0.tgz";
      name = "serve-favicon-2.3.0.tgz";
      sha1 = "aed36cc6834069a6f189cc7222c6a1a811dc5b39";
    };
    deps = {
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
    };
    peerDependencies = [];
  };
  by-spec."serve-index"."~1.7.0" =
    self.by-version."serve-index"."1.7.0";
  by-version."serve-index"."1.7.0" = self.buildNodePackage {
    name = "serve-index-1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-index/-/serve-index-1.7.0.tgz";
      name = "serve-index-1.7.0.tgz";
      sha1 = "03960721b89661507283baa92499c80c9f366f0a";
    };
    deps = {
      "accepts-1.2.9" = self.by-version."accepts"."1.2.9";
      "batch-0.5.2" = self.by-version."batch"."0.5.2";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-types-2.1.2" = self.by-version."mime-types"."2.1.2";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
    };
    peerDependencies = [];
  };
  by-spec."serve-static"."~1.10.0" =
    self.by-version."serve-static"."1.10.0";
  by-version."serve-static"."1.10.0" = self.buildNodePackage {
    name = "serve-static-1.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-static/-/serve-static-1.10.0.tgz";
      name = "serve-static-1.10.0.tgz";
      sha1 = "be632faa685820e4a43ed3df1379135cc4f370d7";
    };
    deps = {
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "send-0.13.0" = self.by-version."send"."0.13.0";
    };
    peerDependencies = [];
  };
  by-spec."sigmund"."~1.0.0" =
    self.by-version."sigmund"."1.0.1";
  by-version."sigmund"."1.0.1" = self.buildNodePackage {
    name = "sigmund-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
      name = "sigmund-1.0.1.tgz";
      sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."sinon".">=1.4.0 <2" =
    self.by-version."sinon"."1.15.4";
  by-version."sinon"."1.15.4" = self.buildNodePackage {
    name = "sinon-1.15.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sinon/-/sinon-1.15.4.tgz";
      name = "sinon-1.15.4.tgz";
      sha1 = "0315f174ce5b31792aea2e3a2afc5bb7804c7a6a";
    };
    deps = {
      "formatio-1.1.1" = self.by-version."formatio"."1.1.1";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "lolex-1.1.0" = self.by-version."lolex"."1.1.0";
      "samsam-1.1.2" = self.by-version."samsam"."1.1.2";
    };
    peerDependencies = [];
  };
  by-spec."sinon".">=1.4.0 >=1.12.1-0 <2.0.0-0" =
    self.by-version."sinon"."1.15.4";
  by-spec."sinon"."^1.12.1" =
    self.by-version."sinon"."1.15.4";
  by-spec."sinon-chai"."^2.6.0" =
    self.by-version."sinon-chai"."2.8.0";
  by-version."sinon-chai"."2.8.0" = self.buildNodePackage {
    name = "sinon-chai-2.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sinon-chai/-/sinon-chai-2.8.0.tgz";
      name = "sinon-chai-2.8.0.tgz";
      sha1 = "432a9bbfd51a6fc00798f4d2526a829c060687ac";
    };
    deps = {
    };
    peerDependencies = [
      self.by-version."chai"."3.0.0"
      self.by-version."sinon"."1.15.4"];
  };
  by-spec."slash"."^0.1.1" =
    self.by-version."slash"."0.1.3";
  by-version."slash"."0.1.3" = self.buildNodePackage {
    name = "slash-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/slash/-/slash-0.1.3.tgz";
      name = "slash-0.1.3.tgz";
      sha1 = "aa710c8ef50b8e1d187ad6cff46f38c656ba0e57";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."sntp"."0.2.x" =
    self.by-version."sntp"."0.2.4";
  by-version."sntp"."0.2.4" = self.buildNodePackage {
    name = "sntp-0.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sntp/-/sntp-0.2.4.tgz";
      name = "sntp-0.2.4.tgz";
      sha1 = "fb885f18b0f3aad189f824862536bceeec750900";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
    };
    peerDependencies = [];
  };
  by-spec."sntp"."1.x.x" =
    self.by-version."sntp"."1.0.9";
  by-version."sntp"."1.0.9" = self.buildNodePackage {
    name = "sntp-1.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
      name = "sntp-1.0.9.tgz";
      sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
    };
    deps = {
      "hoek-2.14.0" = self.by-version."hoek"."2.14.0";
    };
    peerDependencies = [];
  };
  by-spec."socket.io"."0.9.16" =
    self.by-version."socket.io"."0.9.16";
  by-version."socket.io"."0.9.16" = self.buildNodePackage {
    name = "socket.io-0.9.16";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io/-/socket.io-0.9.16.tgz";
      name = "socket.io-0.9.16.tgz";
      sha1 = "3bab0444e49b55fbbc157424dbd41aa375a51a76";
    };
    deps = {
      "socket.io-client-0.9.16" = self.by-version."socket.io-client"."0.9.16";
      "policyfile-0.0.4" = self.by-version."policyfile"."0.0.4";
      "base64id-0.1.0" = self.by-version."base64id"."0.1.0";
      "redis-0.7.3" = self.by-version."redis"."0.7.3";
    };
    peerDependencies = [];
  };
  by-spec."socket.io"."~1.3.5" =
    self.by-version."socket.io"."1.3.5";
  by-version."socket.io"."1.3.5" = self.buildNodePackage {
    name = "socket.io-1.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io/-/socket.io-1.3.5.tgz";
      name = "socket.io-1.3.5.tgz";
      sha1 = "bfd609f37626889e94df9d3526db79a84255f1d8";
    };
    deps = {
      "engine.io-1.5.1" = self.by-version."engine.io"."1.5.1";
      "socket.io-parser-2.2.4" = self.by-version."socket.io-parser"."2.2.4";
      "socket.io-client-1.3.5" = self.by-version."socket.io-client"."1.3.5";
      "socket.io-adapter-0.3.1" = self.by-version."socket.io-adapter"."0.3.1";
      "has-binary-data-0.1.3" = self.by-version."has-binary-data"."0.1.3";
      "debug-2.1.0" = self.by-version."debug"."2.1.0";
    };
    peerDependencies = [];
  };
  by-spec."socket.io-adapter"."0.3.1" =
    self.by-version."socket.io-adapter"."0.3.1";
  by-version."socket.io-adapter"."0.3.1" = self.buildNodePackage {
    name = "socket.io-adapter-0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-adapter/-/socket.io-adapter-0.3.1.tgz";
      name = "socket.io-adapter-0.3.1.tgz";
      sha1 = "df81f970b4df6493902d93e519c7b72755c3a958";
    };
    deps = {
      "debug-1.0.2" = self.by-version."debug"."1.0.2";
      "socket.io-parser-2.2.2" = self.by-version."socket.io-parser"."2.2.2";
      "object-keys-1.0.1" = self.by-version."object-keys"."1.0.1";
    };
    peerDependencies = [];
  };
  by-spec."socket.io-client"."0.9.16" =
    self.by-version."socket.io-client"."0.9.16";
  by-version."socket.io-client"."0.9.16" = self.buildNodePackage {
    name = "socket.io-client-0.9.16";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-client/-/socket.io-client-0.9.16.tgz";
      name = "socket.io-client-0.9.16.tgz";
      sha1 = "4da7515c5e773041d1b423970415bcc430f35fc6";
    };
    deps = {
      "uglify-js-1.2.5" = self.by-version."uglify-js"."1.2.5";
      "ws-0.4.32" = self.by-version."ws"."0.4.32";
      "xmlhttprequest-1.4.2" = self.by-version."xmlhttprequest"."1.4.2";
      "active-x-obfuscator-0.0.1" = self.by-version."active-x-obfuscator"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."socket.io-client"."1.3.5" =
    self.by-version."socket.io-client"."1.3.5";
  by-version."socket.io-client"."1.3.5" = self.buildNodePackage {
    name = "socket.io-client-1.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-client/-/socket.io-client-1.3.5.tgz";
      name = "socket.io-client-1.3.5.tgz";
      sha1 = "9c3a6fbdbd99420c3633a16b4e2543e73f1303ea";
    };
    deps = {
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "engine.io-client-1.5.1" = self.by-version."engine.io-client"."1.5.1";
      "component-bind-1.0.0" = self.by-version."component-bind"."1.0.0";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "object-component-0.0.3" = self.by-version."object-component"."0.0.3";
      "socket.io-parser-2.2.4" = self.by-version."socket.io-parser"."2.2.4";
      "has-binary-0.1.6" = self.by-version."has-binary"."0.1.6";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "parseuri-0.0.2" = self.by-version."parseuri"."0.0.2";
      "to-array-0.1.3" = self.by-version."to-array"."0.1.3";
      "backo2-1.0.2" = self.by-version."backo2"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."socket.io-parser"."2.2.2" =
    self.by-version."socket.io-parser"."2.2.2";
  by-version."socket.io-parser"."2.2.2" = self.buildNodePackage {
    name = "socket.io-parser-2.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.2.tgz";
      name = "socket.io-parser-2.2.2.tgz";
      sha1 = "3d7af6b64497e956b7d9fe775f999716027f9417";
    };
    deps = {
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "json3-3.2.6" = self.by-version."json3"."3.2.6";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "benchmark-1.0.0" = self.by-version."benchmark"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."socket.io-parser"."2.2.4" =
    self.by-version."socket.io-parser"."2.2.4";
  by-version."socket.io-parser"."2.2.4" = self.buildNodePackage {
    name = "socket.io-parser-2.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.4.tgz";
      name = "socket.io-parser-2.2.4.tgz";
      sha1 = "f9ce19bf1909608ceb15d97721e23bfdd1e7cf65";
    };
    deps = {
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "json3-3.2.6" = self.by-version."json3"."3.2.6";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "benchmark-1.0.0" = self.by-version."benchmark"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."source-map"."0.1.x" =
    self.by-version."source-map"."0.1.43";
  by-version."source-map"."0.1.43" = self.buildNodePackage {
    name = "source-map-0.1.43";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.1.43.tgz";
      name = "source-map-0.1.43.tgz";
      sha1 = "c24bc146ca517c1471f5dacbe2571b2b7f9e3346";
    };
    deps = {
      "amdefine-0.1.1" = self.by-version."amdefine"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."source-map".">=0.1.43 <0.2" =
    self.by-version."source-map"."0.1.43";
  by-spec."source-map"."^0.1.39" =
    self.by-version."source-map"."0.1.43";
  by-spec."source-map"."^0.4.2" =
    self.by-version."source-map"."0.4.2";
  by-version."source-map"."0.4.2" = self.buildNodePackage {
    name = "source-map-0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.4.2.tgz";
      name = "source-map-0.4.2.tgz";
      sha1 = "dc9f3114394ab7c1f9782972f3d11820fff06f1f";
    };
    deps = {
      "amdefine-0.1.1" = self.by-version."amdefine"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."source-map"."~0.1.7" =
    self.by-version."source-map"."0.1.43";
  by-spec."split"."0.2" =
    self.by-version."split"."0.2.10";
  by-version."split"."0.2.10" = self.buildNodePackage {
    name = "split-0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/split/-/split-0.2.10.tgz";
      name = "split-0.2.10.tgz";
      sha1 = "67097c601d697ce1368f418f06cd201cf0521a57";
    };
    deps = {
      "through-2.3.7" = self.by-version."through"."2.3.7";
    };
    peerDependencies = [];
  };
  by-spec."split"."0.3" =
    self.by-version."split"."0.3.3";
  by-version."split"."0.3.3" = self.buildNodePackage {
    name = "split-0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/split/-/split-0.3.3.tgz";
      name = "split-0.3.3.tgz";
      sha1 = "cd0eea5e63a211dfff7eb0f091c4133e2d0dd28f";
    };
    deps = {
      "through-2.3.7" = self.by-version."through"."2.3.7";
    };
    peerDependencies = [];
  };
  by-spec."statuses"."1" =
    self.by-version."statuses"."1.2.1";
  by-version."statuses"."1.2.1" = self.buildNodePackage {
    name = "statuses-1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/statuses/-/statuses-1.2.1.tgz";
      name = "statuses-1.2.1.tgz";
      sha1 = "dded45cc18256d51ed40aec142489d5c61026d28";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."statuses"."~1.2.1" =
    self.by-version."statuses"."1.2.1";
  by-spec."stream-combiner"."~0.0.3" =
    self.by-version."stream-combiner"."0.0.4";
  by-version."stream-combiner"."0.0.4" = self.buildNodePackage {
    name = "stream-combiner-0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-combiner/-/stream-combiner-0.0.4.tgz";
      name = "stream-combiner-0.0.4.tgz";
      sha1 = "4d5e433c185261dde623ca3f44c586bcf5c4ad14";
    };
    deps = {
      "duplexer-0.1.1" = self.by-version."duplexer"."0.1.1";
    };
    peerDependencies = [];
  };
  by-spec."stream-combiner"."~0.0.4" =
    self.by-version."stream-combiner"."0.0.4";
  by-spec."stream-consume"."~0.1.0" =
    self.by-version."stream-consume"."0.1.0";
  by-version."stream-consume"."0.1.0" = self.buildNodePackage {
    name = "stream-consume-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-consume/-/stream-consume-0.1.0.tgz";
      name = "stream-consume-0.1.0.tgz";
      sha1 = "a41ead1a6d6081ceb79f65b061901b6d8f3d1d0f";
    };
    deps = {
    };
    peerDependencies = [];
  };
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
  by-spec."stream-to-array"."~1.0.0" =
    self.by-version."stream-to-array"."1.0.0";
  by-version."stream-to-array"."1.0.0" = self.buildNodePackage {
    name = "stream-to-array-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-to-array/-/stream-to-array-1.0.0.tgz";
      name = "stream-to-array-1.0.0.tgz";
      sha1 = "94166bb29f3ea24f082d2f8cd3ebb2cc0d6eca2c";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."streamqueue"."0.0.6" =
    self.by-version."streamqueue"."0.0.6";
  by-version."streamqueue"."0.0.6" = self.buildNodePackage {
    name = "streamqueue-0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/streamqueue/-/streamqueue-0.0.6.tgz";
      name = "streamqueue-0.0.6.tgz";
      sha1 = "66f5f5ec94e9b8af249e4aec2dd1f741bfe94de3";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    peerDependencies = [];
  };
  by-spec."streamqueue"."^0.1.1" =
    self.by-version."streamqueue"."0.1.3";
  by-version."streamqueue"."0.1.3" = self.buildNodePackage {
    name = "streamqueue-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/streamqueue/-/streamqueue-0.1.3.tgz";
      name = "streamqueue-0.1.3.tgz";
      sha1 = "b10d65158af579ce3a5f48c9276d01db23d4f8b5";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
    };
    peerDependencies = [];
  };
  "streamqueue" = self.by-version."streamqueue"."0.1.3";
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
  by-spec."stringstream"."~0.0.4" =
    self.by-version."stringstream"."0.0.4";
  by-version."stringstream"."0.0.4" = self.buildNodePackage {
    name = "stringstream-0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringstream/-/stringstream-0.0.4.tgz";
      name = "stringstream-0.0.4.tgz";
      sha1 = "0f0e3423f942960b5692ac324a57dd093bc41a92";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."strip-ansi"."^0.3.0" =
    self.by-version."strip-ansi"."0.3.0";
  by-version."strip-ansi"."0.3.0" = self.buildNodePackage {
    name = "strip-ansi-0.3.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-0.3.0.tgz";
      name = "strip-ansi-0.3.0.tgz";
      sha1 = "25f48ea22ca79187f3174a4db8759347bb126220";
    };
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    peerDependencies = [];
  };
  by-spec."strip-ansi"."^2.0.1" =
    self.by-version."strip-ansi"."2.0.1";
  by-version."strip-ansi"."2.0.1" = self.buildNodePackage {
    name = "strip-ansi-2.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-2.0.1.tgz";
      name = "strip-ansi-2.0.1.tgz";
      sha1 = "df62c1aa94ed2f114e1d0f21fd1d50482b79a60e";
    };
    deps = {
      "ansi-regex-1.1.1" = self.by-version."ansi-regex"."1.1.1";
    };
    peerDependencies = [];
  };
  by-spec."strip-bom"."^1.0.0" =
    self.by-version."strip-bom"."1.0.0";
  by-version."strip-bom"."1.0.0" = self.buildNodePackage {
    name = "strip-bom-1.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-bom/-/strip-bom-1.0.0.tgz";
      name = "strip-bom-1.0.0.tgz";
      sha1 = "85b8862f3844b5a6d5ec8467a93598173a36f794";
    };
    deps = {
      "first-chunk-stream-1.0.0" = self.by-version."first-chunk-stream"."1.0.0";
      "is-utf8-0.2.0" = self.by-version."is-utf8"."0.2.0";
    };
    peerDependencies = [];
  };
  by-spec."supports-color"."^0.2.0" =
    self.by-version."supports-color"."0.2.0";
  by-version."supports-color"."0.2.0" = self.buildNodePackage {
    name = "supports-color-0.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-0.2.0.tgz";
      name = "supports-color-0.2.0.tgz";
      sha1 = "d92de2694eb3f67323973d7ae3d8b55b4c22190a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."supports-color"."^1.3.0" =
    self.by-version."supports-color"."1.3.1";
  by-version."supports-color"."1.3.1" = self.buildNodePackage {
    name = "supports-color-1.3.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-1.3.1.tgz";
      name = "supports-color-1.3.1.tgz";
      sha1 = "15758df09d8ff3b4acc307539fabe27095e1042d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."supports-color"."~1.2.0" =
    self.by-version."supports-color"."1.2.1";
  by-version."supports-color"."1.2.1" = self.buildNodePackage {
    name = "supports-color-1.2.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-1.2.1.tgz";
      name = "supports-color-1.2.1.tgz";
      sha1 = "12ee21507086cd98c1058d9ec0f4ac476b7af3b2";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."textextensions"."~1.0.0" =
    self.by-version."textextensions"."1.0.1";
  by-version."textextensions"."1.0.1" = self.buildNodePackage {
    name = "textextensions-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/textextensions/-/textextensions-1.0.1.tgz";
      name = "textextensions-1.0.1.tgz";
      sha1 = "36bf1179b3629da66b5aa69c2e09bab395624885";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."through"."2" =
    self.by-version."through"."2.3.7";
  by-version."through"."2.3.7" = self.buildNodePackage {
    name = "through-2.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through/-/through-2.3.7.tgz";
      name = "through-2.3.7.tgz";
      sha1 = "5fcc3690fed2fdf98c6fc88b4d207a4624ac3b87";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."through"."^2.3.4" =
    self.by-version."through"."2.3.7";
  by-spec."through"."~2.3" =
    self.by-version."through"."2.3.7";
  by-spec."through"."~2.3.1" =
    self.by-version."through"."2.3.7";
  by-spec."through"."~2.3.4" =
    self.by-version."through"."2.3.7";
  by-spec."through2".">=0.6.1 <1.0.0-0" =
    self.by-version."through2"."0.6.5";
  by-version."through2"."0.6.5" = self.buildNodePackage {
    name = "through2-0.6.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-0.6.5.tgz";
      name = "through2-0.6.5.tgz";
      sha1 = "41ab9c67b29d57209071410e1d7a7a968cd3ad48";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    peerDependencies = [];
  };
  by-spec."through2"."^0.4.1" =
    self.by-version."through2"."0.4.2";
  by-version."through2"."0.4.2" = self.buildNodePackage {
    name = "through2-0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-0.4.2.tgz";
      name = "through2-0.4.2.tgz";
      sha1 = "dbf5866031151ec8352bb6c4db64a2292a840b9b";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "xtend-2.1.2" = self.by-version."xtend"."2.1.2";
    };
    peerDependencies = [];
  };
  by-spec."through2"."^0.4.2" =
    self.by-version."through2"."0.4.2";
  by-spec."through2"."^0.5.0" =
    self.by-version."through2"."0.5.1";
  by-version."through2"."0.5.1" = self.buildNodePackage {
    name = "through2-0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-0.5.1.tgz";
      name = "through2-0.5.1.tgz";
      sha1 = "dfdd012eb9c700e2323fd334f38ac622ab372da7";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "xtend-3.0.0" = self.by-version."xtend"."3.0.0";
    };
    peerDependencies = [];
  };
  by-spec."through2"."^0.5.1" =
    self.by-version."through2"."0.5.1";
  by-spec."through2"."^0.6.1" =
    self.by-version."through2"."0.6.5";
  by-spec."through2"."^2.0.0" =
    self.by-version."through2"."2.0.0";
  by-version."through2"."2.0.0" = self.buildNodePackage {
    name = "through2-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-2.0.0.tgz";
      name = "through2-2.0.0.tgz";
      sha1 = "f41a1c31df5e129e4314446f66eca05cd6a30480";
    };
    deps = {
      "readable-stream-2.0.1" = self.by-version."readable-stream"."2.0.1";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    peerDependencies = [];
  };
  by-spec."through2"."~0.6.3" =
    self.by-version."through2"."0.6.5";
  by-spec."tildify"."^1.0.0" =
    self.by-version."tildify"."1.1.0";
  by-version."tildify"."1.1.0" = self.buildNodePackage {
    name = "tildify-1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tildify/-/tildify-1.1.0.tgz";
      name = "tildify-1.1.0.tgz";
      sha1 = "ef32cbcd2b6ea4fe03e98343c484465116414d38";
    };
    deps = {
      "os-homedir-1.0.0" = self.by-version."os-homedir"."1.0.0";
    };
    peerDependencies = [];
  };
  by-spec."timers-ext"."0.1" =
    self.by-version."timers-ext"."0.1.0";
  by-version."timers-ext"."0.1.0" = self.buildNodePackage {
    name = "timers-ext-0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/timers-ext/-/timers-ext-0.1.0.tgz";
      name = "timers-ext-0.1.0.tgz";
      sha1 = "00345a2ca93089d1251322054389d263e27b77e2";
    };
    deps = {
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "next-tick-0.2.2" = self.by-version."next-tick"."0.2.2";
    };
    peerDependencies = [];
  };
  by-spec."tinycolor"."0.x" =
    self.by-version."tinycolor"."0.0.1";
  by-version."tinycolor"."0.0.1" = self.buildNodePackage {
    name = "tinycolor-0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tinycolor/-/tinycolor-0.0.1.tgz";
      name = "tinycolor-0.0.1.tgz";
      sha1 = "320b5a52d83abb5978d81a3e887d4aefb15a6164";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."to-array"."0.1.3" =
    self.by-version."to-array"."0.1.3";
  by-version."to-array"."0.1.3" = self.buildNodePackage {
    name = "to-array-0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/to-array/-/to-array-0.1.3.tgz";
      name = "to-array-0.1.3.tgz";
      sha1 = "d45dadc6363417f60f28474fea50ecddbb4f4991";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."tough-cookie".">=0.12.0" =
    self.by-version."tough-cookie"."2.0.0";
  by-version."tough-cookie"."2.0.0" = self.buildNodePackage {
    name = "tough-cookie-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tough-cookie/-/tough-cookie-2.0.0.tgz";
      name = "tough-cookie-2.0.0.tgz";
      sha1 = "41ce08720b35cf90beb044dd2609fb19e928718f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."tunnel-agent"."~0.4.0" =
    self.by-version."tunnel-agent"."0.4.0";
  by-version."tunnel-agent"."0.4.0" = self.buildNodePackage {
    name = "tunnel-agent-0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.0.tgz";
      name = "tunnel-agent-0.4.0.tgz";
      sha1 = "b1184e312ffbcf70b3b4c78e8c219de7ebb1c550";
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
  by-spec."type-detect"."^1.0.0" =
    self.by-version."type-detect"."1.0.0";
  by-version."type-detect"."1.0.0" = self.buildNodePackage {
    name = "type-detect-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-detect/-/type-detect-1.0.0.tgz";
      name = "type-detect-1.0.0.tgz";
      sha1 = "762217cc06db258ec48908a1298e8b95121e8ea2";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."type-is"."~1.6.3" =
    self.by-version."type-is"."1.6.3";
  by-version."type-is"."1.6.3" = self.buildNodePackage {
    name = "type-is-1.6.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-is/-/type-is-1.6.3.tgz";
      name = "type-is-1.6.3.tgz";
      sha1 = "d87d201777f76dfc526ac202679715d41a28c580";
    };
    deps = {
      "media-typer-0.3.0" = self.by-version."media-typer"."0.3.0";
      "mime-types-2.1.2" = self.by-version."mime-types"."2.1.2";
    };
    peerDependencies = [];
  };
  by-spec."uglify-js"."1.2.5" =
    self.by-version."uglify-js"."1.2.5";
  by-version."uglify-js"."1.2.5" = self.buildNodePackage {
    name = "uglify-js-1.2.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-1.2.5.tgz";
      name = "uglify-js-1.2.5.tgz";
      sha1 = "b542c2c76f78efb34b200b20177634330ff702b6";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."uglify-js"."2.4.6" =
    self.by-version."uglify-js"."2.4.6";
  by-version."uglify-js"."2.4.6" = self.buildNodePackage {
    name = "uglify-js-2.4.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-2.4.6.tgz";
      name = "uglify-js-2.4.6.tgz";
      sha1 = "31766a4d822babf5f32c14096251ed9259298ad3";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
      "uglify-to-browserify-1.0.2" = self.by-version."uglify-to-browserify"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."uglify-to-browserify"."~1.0.0" =
    self.by-version."uglify-to-browserify"."1.0.2";
  by-version."uglify-to-browserify"."1.0.2" = self.buildNodePackage {
    name = "uglify-to-browserify-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
      name = "uglify-to-browserify-1.0.2.tgz";
      sha1 = "6e0924d6bda6b5afe349e39a6d632850a0f882b7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."uid-safe"."~2.0.0" =
    self.by-version."uid-safe"."2.0.0";
  by-version."uid-safe"."2.0.0" = self.buildNodePackage {
    name = "uid-safe-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uid-safe/-/uid-safe-2.0.0.tgz";
      name = "uid-safe-2.0.0.tgz";
      sha1 = "a7f3c6ca64a1f6a5d04ec0ef3e4c3d5367317137";
    };
    deps = {
      "base64-url-1.2.1" = self.by-version."base64-url"."1.2.1";
    };
    peerDependencies = [];
  };
  by-spec."ultron"."1.0.x" =
    self.by-version."ultron"."1.0.2";
  by-version."ultron"."1.0.2" = self.buildNodePackage {
    name = "ultron-1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ultron/-/ultron-1.0.2.tgz";
      name = "ultron-1.0.2.tgz";
      sha1 = "ace116ab557cd197386a4e88f4685378c8b2e4fa";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."underscore"."1.8.2" =
    self.by-version."underscore"."1.8.2";
  by-version."underscore"."1.8.2" = self.buildNodePackage {
    name = "underscore-1.8.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.8.2.tgz";
      name = "underscore-1.8.2.tgz";
      sha1 = "64df2eb590899de950782f3735190ba42ebf311d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."unique-stream"."^1.0.0" =
    self.by-version."unique-stream"."1.0.0";
  by-version."unique-stream"."1.0.0" = self.buildNodePackage {
    name = "unique-stream-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/unique-stream/-/unique-stream-1.0.0.tgz";
      name = "unique-stream-1.0.0.tgz";
      sha1 = "d59a4a75427447d9aa6c91e70263f8d26a4b104b";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."unpipe"."1.0.0" =
    self.by-version."unpipe"."1.0.0";
  by-version."unpipe"."1.0.0" = self.buildNodePackage {
    name = "unpipe-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
      name = "unpipe-1.0.0.tgz";
      sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."unpipe"."~1.0.0" =
    self.by-version."unpipe"."1.0.0";
  by-spec."user-home"."^1.1.1" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = self.buildNodePackage {
    name = "user-home-1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
      name = "user-home-1.1.1.tgz";
      sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."useragent"."^2.1.6" =
    self.by-version."useragent"."2.1.7";
  by-version."useragent"."2.1.7" = self.buildNodePackage {
    name = "useragent-2.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/useragent/-/useragent-2.1.7.tgz";
      name = "useragent-2.1.7.tgz";
      sha1 = "2229bc0a1bc7751e0ed50b0c13184b81fcb2ec8a";
    };
    deps = {
      "lru-cache-2.2.4" = self.by-version."lru-cache"."2.2.4";
    };
    peerDependencies = [];
  };
  by-spec."utf8"."2.0.0" =
    self.by-version."utf8"."2.0.0";
  by-version."utf8"."2.0.0" = self.buildNodePackage {
    name = "utf8-2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utf8/-/utf8-2.0.0.tgz";
      name = "utf8-2.0.0.tgz";
      sha1 = "79ce59eced874809cab9a71fc7102c7d45d4118d";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."util".">=0.10.3 <1" =
    self.by-version."util"."0.10.3";
  by-version."util"."0.10.3" = self.buildNodePackage {
    name = "util-0.10.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/util/-/util-0.10.3.tgz";
      name = "util-0.10.3.tgz";
      sha1 = "7afb1afe50805246489e3db7fe0ed379336ac0f9";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    peerDependencies = [];
  };
  by-spec."util-deprecate"."~1.0.1" =
    self.by-version."util-deprecate"."1.0.1";
  by-version."util-deprecate"."1.0.1" = self.buildNodePackage {
    name = "util-deprecate-1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.1.tgz";
      name = "util-deprecate-1.0.1.tgz";
      sha1 = "3556a3d13c4c6aa7983d7e2425478197199b7881";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."utile"."~0.2.1" =
    self.by-version."utile"."0.2.1";
  by-version."utile"."0.2.1" = self.buildNodePackage {
    name = "utile-0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utile/-/utile-0.2.1.tgz";
      name = "utile-0.2.1.tgz";
      sha1 = "930c88e99098d6220834c356cbd9a770522d90d7";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "deep-equal-1.0.0" = self.by-version."deep-equal"."1.0.0";
      "i-0.3.3" = self.by-version."i"."0.3.3";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "ncp-0.4.2" = self.by-version."ncp"."0.4.2";
      "rimraf-2.4.0" = self.by-version."rimraf"."2.4.0";
    };
    peerDependencies = [];
  };
  by-spec."utils-merge"."1.0.0" =
    self.by-version."utils-merge"."1.0.0";
  by-version."utils-merge"."1.0.0" = self.buildNodePackage {
    name = "utils-merge-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utils-merge/-/utils-merge-1.0.0.tgz";
      name = "utils-merge-1.0.0.tgz";
      sha1 = "0294fb922bb9375153541c4f7096231f287c8af8";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."v8flags"."^2.0.2" =
    self.by-version."v8flags"."2.0.9";
  by-version."v8flags"."2.0.9" = self.buildNodePackage {
    name = "v8flags-2.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/v8flags/-/v8flags-2.0.9.tgz";
      name = "v8flags-2.0.9.tgz";
      sha1 = "6191ad59f56ae909c7dd735c2fd43fc2d1ce7159";
    };
    deps = {
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
    };
    peerDependencies = [];
  };
  by-spec."vary"."~1.0.0" =
    self.by-version."vary"."1.0.0";
  by-version."vary"."1.0.0" = self.buildNodePackage {
    name = "vary-1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vary/-/vary-1.0.0.tgz";
      name = "vary-1.0.0.tgz";
      sha1 = "c5e76cec20d3820d8f2a96e7bee38731c34da1e7";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."vhost"."~3.0.0" =
    self.by-version."vhost"."3.0.0";
  by-version."vhost"."3.0.0" = self.buildNodePackage {
    name = "vhost-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vhost/-/vhost-3.0.0.tgz";
      name = "vhost-3.0.0.tgz";
      sha1 = "2d0ec59a3e012278b65adbe17c1717a5a5023045";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."vinyl"."^0.2.1" =
    self.by-version."vinyl"."0.2.3";
  by-version."vinyl"."0.2.3" = self.buildNodePackage {
    name = "vinyl-0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vinyl/-/vinyl-0.2.3.tgz";
      name = "vinyl-0.2.3.tgz";
      sha1 = "bca938209582ec5a49ad538a00fa1f125e513252";
    };
    deps = {
      "clone-stats-0.0.1" = self.by-version."clone-stats"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."vinyl"."^0.4.0" =
    self.by-version."vinyl"."0.4.6";
  by-version."vinyl"."0.4.6" = self.buildNodePackage {
    name = "vinyl-0.4.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vinyl/-/vinyl-0.4.6.tgz";
      name = "vinyl-0.4.6.tgz";
      sha1 = "2f356c87a550a255461f36bbeb2a5ba8bf784847";
    };
    deps = {
      "clone-0.2.0" = self.by-version."clone"."0.2.0";
      "clone-stats-0.0.1" = self.by-version."clone-stats"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."vinyl"."^0.4.2" =
    self.by-version."vinyl"."0.4.6";
  by-spec."vinyl"."^0.5.0" =
    self.by-version."vinyl"."0.5.0";
  by-version."vinyl"."0.5.0" = self.buildNodePackage {
    name = "vinyl-0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vinyl/-/vinyl-0.5.0.tgz";
      name = "vinyl-0.5.0.tgz";
      sha1 = "ad44bfc492a6a8442f5651930b2437d3fe74d13a";
    };
    deps = {
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "clone-stats-0.0.1" = self.by-version."clone-stats"."0.0.1";
      "replace-ext-0.0.1" = self.by-version."replace-ext"."0.0.1";
    };
    peerDependencies = [];
  };
  by-spec."vinyl-fs"."^0.3.0" =
    self.by-version."vinyl-fs"."0.3.13";
  by-version."vinyl-fs"."0.3.13" = self.buildNodePackage {
    name = "vinyl-fs-0.3.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vinyl-fs/-/vinyl-fs-0.3.13.tgz";
      name = "vinyl-fs-0.3.13.tgz";
      sha1 = "3d384c5b3032e356cd388023e3a085303382ac23";
    };
    deps = {
      "defaults-1.0.2" = self.by-version."defaults"."1.0.2";
      "glob-stream-3.1.18" = self.by-version."glob-stream"."3.1.18";
      "glob-watcher-0.0.6" = self.by-version."glob-watcher"."0.0.6";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "strip-bom-1.0.0" = self.by-version."strip-bom"."1.0.0";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
      "vinyl-0.4.6" = self.by-version."vinyl"."0.4.6";
    };
    peerDependencies = [];
  };
  by-spec."vinyl-sourcemaps-apply"."^0.1.1" =
    self.by-version."vinyl-sourcemaps-apply"."0.1.4";
  by-version."vinyl-sourcemaps-apply"."0.1.4" = self.buildNodePackage {
    name = "vinyl-sourcemaps-apply-0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vinyl-sourcemaps-apply/-/vinyl-sourcemaps-apply-0.1.4.tgz";
      name = "vinyl-sourcemaps-apply-0.1.4.tgz";
      sha1 = "c5fcbd43e2f238423c2dc98bddd6f79b72bc345b";
    };
    deps = {
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    peerDependencies = [];
  };
  by-spec."vinyl-sourcemaps-apply"."^0.1.4" =
    self.by-version."vinyl-sourcemaps-apply"."0.1.4";
  by-spec."which"."^1.0.9" =
    self.by-version."which"."1.1.1";
  by-version."which"."1.1.1" = self.buildNodePackage {
    name = "which-1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/which/-/which-1.1.1.tgz";
      name = "which-1.1.1.tgz";
      sha1 = "9ce512459946166e12c083f08ec073380fc8cbbb";
    };
    deps = {
      "is-absolute-0.1.7" = self.by-version."is-absolute"."0.1.7";
    };
    peerDependencies = [];
  };
  by-spec."wordwrap"."~0.0.2" =
    self.by-version."wordwrap"."0.0.3";
  by-version."wordwrap"."0.0.3" = self.buildNodePackage {
    name = "wordwrap-0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
      name = "wordwrap-0.0.3.tgz";
      sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
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
  by-spec."ws"."0.4.31" =
    self.by-version."ws"."0.4.31";
  by-version."ws"."0.4.31" = self.buildNodePackage {
    name = "ws-0.4.31";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/ws/-/ws-0.4.31.tgz";
      name = "ws-0.4.31.tgz";
      sha1 = "5a4849e7a9ccd1ed5a81aeb4847c9fedf3122927";
    };
    deps = {
      "commander-0.6.1" = self.by-version."commander"."0.6.1";
      "nan-0.3.2" = self.by-version."nan"."0.3.2";
      "tinycolor-0.0.1" = self.by-version."tinycolor"."0.0.1";
      "options-0.0.6" = self.by-version."options"."0.0.6";
    };
    peerDependencies = [];
  };
  by-spec."ws"."0.4.x" =
    self.by-version."ws"."0.4.32";
  by-version."ws"."0.4.32" = self.buildNodePackage {
    name = "ws-0.4.32";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/ws/-/ws-0.4.32.tgz";
      name = "ws-0.4.32.tgz";
      sha1 = "787a6154414f3c99ed83c5772153b20feb0cec32";
    };
    deps = {
      "commander-2.1.0" = self.by-version."commander"."2.1.0";
      "nan-1.0.0" = self.by-version."nan"."1.0.0";
      "tinycolor-0.0.1" = self.by-version."tinycolor"."0.0.1";
      "options-0.0.6" = self.by-version."options"."0.0.6";
    };
    peerDependencies = [];
  };
  by-spec."ws"."0.5.0" =
    self.by-version."ws"."0.5.0";
  by-version."ws"."0.5.0" = self.buildNodePackage {
    name = "ws-0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ws/-/ws-0.5.0.tgz";
      name = "ws-0.5.0.tgz";
      sha1 = "b3980391dc4777d83974718aa361e808d86cf9ca";
    };
    deps = {
      "nan-1.4.3" = self.by-version."nan"."1.4.3";
      "options-0.0.6" = self.by-version."options"."0.0.6";
      "ultron-1.0.2" = self.by-version."ultron"."1.0.2";
    };
    peerDependencies = [];
  };
  by-spec."xmlbuilder"."0.4.2" =
    self.by-version."xmlbuilder"."0.4.2";
  by-version."xmlbuilder"."0.4.2" = self.buildNodePackage {
    name = "xmlbuilder-0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xmlbuilder/-/xmlbuilder-0.4.2.tgz";
      name = "xmlbuilder-0.4.2.tgz";
      sha1 = "1776d65f3fdbad470a08d8604cdeb1c4e540ff83";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."xmlhttprequest"."1.4.2" =
    self.by-version."xmlhttprequest"."1.4.2";
  by-version."xmlhttprequest"."1.4.2" = self.buildNodePackage {
    name = "xmlhttprequest-1.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xmlhttprequest/-/xmlhttprequest-1.4.2.tgz";
      name = "xmlhttprequest-1.4.2.tgz";
      sha1 = "01453a1d9bed1e8f172f6495bbf4c8c426321500";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."xmlhttprequest"."https://github.com/rase-/node-XMLHttpRequest/archive/a6b6f2.tar.gz" =
    self.by-version."xmlhttprequest"."1.5.0";
  by-version."xmlhttprequest"."1.5.0" = self.buildNodePackage {
    name = "xmlhttprequest-1.5.0";
    bin = false;
    src = fetchurl {
      url = "https://github.com/rase-/node-XMLHttpRequest/archive/a6b6f2.tar.gz";
      name = "xmlhttprequest-1.5.0.tgz";
      sha256 = "f29574bb6dad260b7856b8dcfd432fc9ceb52161b8ee02f387440bb7f6e39f92";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."xtend".">=4.0.0 <4.1.0-0" =
    self.by-version."xtend"."4.0.0";
  by-version."xtend"."4.0.0" = self.buildNodePackage {
    name = "xtend-4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-4.0.0.tgz";
      name = "xtend-4.0.0.tgz";
      sha1 = "8bc36ff87aedbe7ce9eaf0bca36b2354a743840f";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."xtend"."^4.0.0" =
    self.by-version."xtend"."4.0.0";
  by-spec."xtend"."~2.1.1" =
    self.by-version."xtend"."2.1.2";
  by-version."xtend"."2.1.2" = self.buildNodePackage {
    name = "xtend-2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-2.1.2.tgz";
      name = "xtend-2.1.2.tgz";
      sha1 = "6efecc2a4dad8e6962c4901b337ce7ba87b5d28b";
    };
    deps = {
      "object-keys-0.4.0" = self.by-version."object-keys"."0.4.0";
    };
    peerDependencies = [];
  };
  by-spec."xtend"."~3.0.0" =
    self.by-version."xtend"."3.0.0";
  by-version."xtend"."3.0.0" = self.buildNodePackage {
    name = "xtend-3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-3.0.0.tgz";
      name = "xtend-3.0.0.tgz";
      sha1 = "5cce7407baf642cba7becda568111c493f59665a";
    };
    deps = {
    };
    peerDependencies = [];
  };
  by-spec."xtend"."~4.0.0" =
    self.by-version."xtend"."4.0.0";
  by-spec."zeparser"."0.0.5" =
    self.by-version."zeparser"."0.0.5";
  by-version."zeparser"."0.0.5" = self.buildNodePackage {
    name = "zeparser-0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/zeparser/-/zeparser-0.0.5.tgz";
      name = "zeparser-0.0.5.tgz";
      sha1 = "03726561bc268f2e5444f54c665b7fd4a8c029e2";
    };
    deps = {
    };
    peerDependencies = [];
  };
}
