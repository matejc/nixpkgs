{ lib, pythonPackages, cdrkit, virt-viewer, netcat-gnu }:

pythonPackages.buildPythonPackage rec {
  pname = "kcli";
  version = "12.7";

  propagatedBuildInputs = with pythonPackages; [
    pyyaml libvirt netaddr flask iptools prettytable cdrkit virt-viewer
    netcat-gnu
  ];

  src = pythonPackages.fetchPypi {
    inherit pname version;
    sha256 = "1qh394bivw90dv3rbivi6zy8z94d34cq7h5vmcs072f5vy9blqi0";
  };

  preConfigure = ''
    substituteInPlace kvirt/web.py \
      --replace "app.run(host='0.0.0.0', port=port, debug=debug)" "app.run(host='0.0.0.0', port=port, debug=debug, use_reloader=False)"

    substituteInPlace kvirt/common/__init__.py \
      --replace "from urllib.parse import quote" "from urllib import quote" \
      --replace "from urllib.request import urlopen" "from urllib import urlopen" \
      --replace "urllib.error" "urllib_error" \
      --replace "import urllib_error" "import urllib as urllib_error" \
      --replace "_input = input(message)" "_input = raw_input(message)"

    substituteInPlace kvirt/kvm/__init__.py \
      --replace "if template.startswith('coreos') or template.startswith('rhcos'):" "if template is not None and (template.startswith('coreos') or template.startswith('rhcos')):" \
      --replace "if not template.startswith('coreos') and not template.startswith('rhcos'):" "if template is not None and (not template.startswith('coreos') and not template.startswith('rhcos')):"
  '';

  meta = {
    description = "Wrapper around libvirt/aws/gcp/kubevirt/openstack/ovirt";
    homepage = https://github.com/karmab/kcli;
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ matejc ];
  };
}
