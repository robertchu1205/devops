resource "aws_vpc" "main" {
  cidr_block           = "172.18.0.0/20"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "hk-vpc-1"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
    "kubernetes.io/role/elb"          = "1"
    "kubernetes.io/role/internal-elb" = "1"
  }
}
