resource "aws_efs_mount_target" "hk-algo-dev-eks-ap-east-1a" {
  file_system_id  = aws_efs_file_system.hk-algo-efs-for-eks.id
  subnet_id      = "subnet-02b223e2785f190c1"
  security_groups = ["sg-001f79b884aec8f12"]
}

resource "aws_efs_mount_target" "hk-algo-dev-eks-ap-east-1b" {
  file_system_id  = aws_efs_file_system.hk-algo-efs-for-eks.id
  subnet_id      = "subnet-003dab95b1493d5fa"
  security_groups = ["sg-001f79b884aec8f12"]
}