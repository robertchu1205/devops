resource "aws_eks_addon" "vpc_cni" {
  cluster_name = var.eks_cluster_name
  addon_name   = "vpc-cni"

  depends_on = [
    aws_eks_cluster.hk-algo-prd-eks-cluster,
  ]

}
resource "aws_eks_addon" "coredns" {
  cluster_name = var.eks_cluster_name
  addon_name   = "coredns"

  depends_on = [
    aws_eks_cluster.hk-algo-prd-eks-cluster,
  ]
}

resource "aws_eks_addon" "kube_proxy" {
  cluster_name = var.eks_cluster_name
  addon_name   = "kube-proxy"

  depends_on = [
    aws_eks_cluster.hk-algo-prd-eks-cluster,
  ]
}
