{
  lib,
  fetchFromGitHub,
  setuptools,
  addBinToPathHook,
  python,
  curl-impersonate-chrome,
  writableTmpDirAsHomeHook,
}:

let
  customPython = python.override {
    packageOverrides = self: super: {
      websockets = super.websockets.overridePythonAttrs (old: rec {
        version = "12.0";
        src = fetchFromGitHub {
          owner = "python-websockets";
          repo = "websockets";
          tag = version;
          hash = "sha256-sOL3VI9Ib/PncZs5KN4dAIHOrBc7LfXqT15LO4M6qKg=";
        };
        # Needs unittest; it'll get a workout in the curl-cffi tests
        doCheck = false;
      });
    };
  };
in
python.pkgs.buildPythonPackage rec {
  pname = "curl-cffi";
  version = "0.14.0b2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "lexiforest";
    repo = "curl_cffi";
    tag = "v${version}";
    hash = "sha256-JXfqZTf26kl2P0OMAw/aTdjQaGtdyTpNnhRPlwMiZNw=";
  };

  patches = [
    ./use-system-libs.patch
  ];

  buildInputs = [ curl-impersonate-chrome ];

  build-system = with customPython.pkgs; [
    cffi
    setuptools
  ];

  dependencies = with customPython.pkgs; [
    cffi
    certifi
  ];

  pythonImportsCheck = [ "curl_cffi" ];

  nativeCheckInputs = with customPython.pkgs; [
    addBinToPathHook
    charset-normalizer
    cryptography
    fastapi
    httpx
    proxy-py
    pytest-asyncio
    pytest-trio
    pytestCheckHook
    python-multipart
    trustme
    uvicorn
    websockets
    writableTmpDirAsHomeHook
  ];

  preCheck = ''
    # import from $out
    rm -r curl_cffi
  '';

  enabledTestPaths = [
    "tests/unittest"
  ];

  disabledTests = [
    # FIXME ImpersonateError: Impersonating chrome136 is not supported
    "test_impersonate_without_version"
    "test_with_impersonate"
    # InvalidURL: Invalid URL component 'path'
    "test_update_params"
    # tests access network
    "test_add_handle"
    "test_async"
    "test_socket_action"
    "test_without_impersonate"
    # Hangs the build (possibly forever)
    # https://github.com/lexiforest/curl_cffi/issues/657
    "test_websocket"
    # Runs out of memory
    "test_receive_large_messages_run_forever"
  ];

  __darwinAllowLocalNetworking = true;

  meta = {
    changelog = "https://github.com/lexiforest/curl_cffi/releases/tag/${src.tag}";
    description = "Python binding for curl-impersonate via cffi";
    homepage = "https://curl-cffi.readthedocs.io";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ chuangzhu ];
  };
}
