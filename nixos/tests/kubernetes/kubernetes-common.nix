{ config, pkgs, certs, servers }:
let
  etcd_key = "${certs}/etcd-key.pem";
  etcd_cert = "${certs}/etcd.pem";
  ca_pem = "${certs}/ca.pem";
  etcd_client_cert = "${certs}/etcd-client.crt";
  etcd_client_key = "${certs}/etcd-client-key.pem";

  worker_key = "${certs}/worker-key.pem";
  worker_cert = "${certs}/worker.pem";

  mkDockerOpts = "${pkgs.kubernetes.src}/cluster/centos/node/bin/mk-docker-opts.sh";

  rootCaFile = pkgs.writeScript "rootCaFile.pem" ''
    ${pkgs.lib.readFile "${certs}/ca.pem"}

    ${pkgs.lib.readFile ("${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt")}
  '';
in
{
  programs.bash.enableCompletion = true;
  environment.systemPackages = with pkgs; [ netcat bind etcd.bin ];

  networking = {
    firewall = {
      enable = true;
      allowedTCPPorts = [
        10250 80 443
      ];
      allowedUDPPorts = [
        8285  # flannel udp
        8472  # flannel vxlan
      ];
    };
    extraHosts = ''
      ${servers.master} etcd.kubernetes.nixos.xyz
      ${servers.master} kubernetes.nixos.xyz
      ${servers.master} master.nixos.xyz
      ${servers.one} one.nixos.xyz
      ${servers.two} two.nixos.xyz
      ${servers.three} three.nixos.xyz
    '';
  };
  virtualisation.docker.extraOptions = ''
    --iptables=false $DOCKER_OPTS
  '';
  systemd.services."pre-docker" = {
    description = "Pre-Docker Actions";
    wantedBy = [ "flannel.service" ];
    before = [ "docker.service" ];
    after = [ "flannel.service" ];
    path = [ pkgs.gawk pkgs.gnugrep ];
    script = ''
      mkdir -p /run/flannel
      ${pkgs.bashInteractive}/bin/bash ${mkDockerOpts} -d /run/flannel/docker
      cat /run/flannel/docker
    '';
    serviceConfig.Type = "simple";
  };
  systemd.services.docker.serviceConfig.EnvironmentFile = "/run/flannel/docker";

  services.flannel = {
    enable = true;
    network = "10.2.0.0/16";
    iface = "eth1";
    etcd = {
      endpoints = ["https://etcd.kubernetes.nixos.xyz:2379"];
      keyFile = etcd_client_key;
      certFile = etcd_client_cert;
      caFile = ca_pem;
    };
  };
  environment.variables = {
    ETCDCTL_CERT_FILE = "${etcd_client_cert}";
    ETCDCTL_KEY_FILE = "${etcd_client_key}";
    ETCDCTL_CA_FILE = "${rootCaFile}";
    ETCDCTL_PEERS = "https://etcd.kubernetes.nixos.xyz:2379";
  };

  services.kubernetes = {
    kubelet = {
      networkPlugin = "cni";
      cni.config = [{
        name = "mynet";
        type = "flannel";
        delegate = {
          isDefaultGateway = true;
          bridge = "docker0";
        };
      }];
      tlsKeyFile = worker_key;
      tlsCertFile = worker_cert;
      hostname = "${config.networking.hostName}.nixos.xyz";
      extraOpts = "--node-ip ${config.networking.primaryIPAddress}";
      clusterDns = config.networking.primaryIPAddress;
    };
    etcd = {
      servers = ["https://etcd.kubernetes.nixos.xyz:2379"];
      keyFile = etcd_client_key;
      certFile = etcd_client_cert;
      caFile = ca_pem;
    };
    kubeconfig = {
      server = "https://kubernetes.nixos.xyz:4443";
      caFile = rootCaFile;
      certFile = worker_cert;
      keyFile = worker_key;
    };
    clusterCidr = "10.0.0.0/8";
    dns.enable = true;
    dns.port = 4453;
  };

  services.dnsmasq.enable = true;
  services.dnsmasq.servers = ["/${config.services.kubernetes.dns.domain}/127.0.0.1#4453"];

  virtualisation.docker.enable = true;
  virtualisation.docker.storageDriver = "overlay";
}
