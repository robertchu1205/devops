resource "aws_eks_cluster" "hk-algo-prd-eks-cluster" {
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.104.0.0/16"
  }

  name     = var.eks_cluster_name
  role_arn = "arn:aws:iam::328162702476:role/eks-iam-role"
  version  = "1.22"

  vpc_config {
    endpoint_private_access = "true"
    endpoint_public_access  = "true"
    public_access_cidrs     = ["113.28.102.128/26", "18.167.224.139/32", "183.14.0.0/16", "42.200.69.243/32", "47.75.218.194/32"]
    subnet_ids              = [var.subnet_id_1b, var.subnet_id_1a]
  }

  depends_on = [
    aws_eks_cluster.hk-algo-prd-eks-cluster,
  ]
  
  tags = {
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }

}
