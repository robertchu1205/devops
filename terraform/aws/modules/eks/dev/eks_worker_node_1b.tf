resource "aws_eks_node_group" "worker-node-group-1b" {
  cluster_name  = aws_eks_cluster.hk-algo-d-eks-cluster.name
  node_group_name = "hk-algo-d-eks-cluster-workernodes-1b"
  node_role_arn  = aws_iam_role.workernodes.arn
  subnet_ids   = [var.subnet_id_1b]
  instance_types = ["t3.xlarge"]
  
  remote_access {
   ec2_ssh_key = "alicloud-algo-jump_aqumon-user"
  }
  scaling_config {
   desired_size = 2
   max_size   = 4
   min_size   = 1
  }

  tags = {
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
 
  labels ={
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

  depends_on = [
   aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
   aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
   aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]

}


