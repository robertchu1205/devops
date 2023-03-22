resource "aws_efs_file_system" "hk-algo-efs-for-eks" {
  creation_token = "hk-algo-efs-for-eks"
  tags = {
    Name = "hk-algo-efs-for-eks"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }
}