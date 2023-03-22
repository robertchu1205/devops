resource "aws_eks_node_group" "worker-node-group-1b-2xlarge" {
  cluster_name  = aws_eks_cluster.hk-algo-prd-eks-cluster.name
  node_group_name = "hk-algo-prd-eks-cluster-workernodes-1b-2xlarge"
  node_role_arn  = "arn:aws:iam::328162702476:role/eks-worker-node-role"
  subnet_ids   = [var.subnet_id_1b]
  instance_types = ["t3.2xlarge"]
  
  remote_access {
    ec2_ssh_key = "alicloud-algo-jump_aqumon-user"
  }
  scaling_config {
    desired_size = 2
    max_size   = 4
    min_size   = 1
  }
  taint {
    key    = "node_type"
    value  = "2xlarge"
    effect = "NO_SCHEDULE"
  }

  tags = {
    Name = "hk-algo-prd-eks-cluster-worker-nodes-subnet-1b-2xlarge"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
 
  labels = {
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

}
