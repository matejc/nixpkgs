{ }:
{
    kubernetes-singlenode = import ./singlenode.nix {};
    kubernetes-multinode-kubectl = import ./multinode-kubectl.nix {};
}
