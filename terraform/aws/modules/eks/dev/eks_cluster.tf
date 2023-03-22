resource "aws_eks_cluster" "hk-algo-d-eks-cluster" {
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.100.0.0/16"
  }

  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks-iam-role.arn
  version  = "1.22"

  vpc_config {
    endpoint_private_access = "true"
    endpoint_public_access  = "true"
    public_access_cidrs     = ["113.28.102.128/26", "18.167.224.139/32", "183.14.0.0/16"]
    subnet_ids              = [var.subnet_id_1b, var.subnet_id_1a]
  }

  depends_on = [
    aws_iam_role.eks-iam-role,
  ]
  
  tags = {
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

}