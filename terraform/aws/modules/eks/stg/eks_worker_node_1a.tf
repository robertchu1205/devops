resource "aws_eks_node_group" "worker-node-group-1a" {
  cluster_name  = aws_eks_cluster.hk-algo-stg-eks-cluster.name
  node_group_name = "hk-algo-stg-eks-cluster-workernodes-1a"
  node_role_arn  = "arn:aws:iam::328162702476:role/eks-worker-node-role"
  subnet_ids   = [var.subnet_id_1a]
  instance_types = ["t3.xlarge"]

  remote_access {
   ec2_ssh_key = "alicloud-algo-jump_aqumon-user"
  }
  scaling_config {
   desired_size = 1
   max_size   = 4
   min_size   = 1
  }

  tags = {
    name = "hk-algo-stg-eks-cluster-worker-nodes-subnet-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

  labels ={
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

}


#EKS can't directly set the "Name" tag, so we use the autoscaling_group_tag resource. 
resource "aws_autoscaling_group_tag" "worker-node-group-1a-map-migrated-project-id" {
  for_each = toset(
    [for asg in flatten(
      [for resources in aws_eks_node_group.worker-node-group-1a.resources : resources.autoscaling_groups]
    ) : asg.name]
  )

  autoscaling_group_name = each.value

  tag {
    key   = "map-migrated-project-id"
    value = "GCR-Migration-2021-398"
    propagate_at_launch = true
  }

  depends_on = [
    aws_eks_node_group.worker-node-group-1a
  ]

}
resource "aws_autoscaling_group_tag" "worker-node-group-1a-map-migrated-cnmap" {
  for_each = toset(
    [for asg in flatten(
      [for resources in aws_eks_node_group.worker-node-group-1a.resources : resources.autoscaling_groups]
    ) : asg.name]
  )

  autoscaling_group_name = each.value

  tag {
    key   = "map-migrated-cnmap"
    value = "d-server-0067yxz39nth5o"
    propagate_at_launch = true
  }

  depends_on = [
    aws_eks_node_group.worker-node-group-1a
  ]

}