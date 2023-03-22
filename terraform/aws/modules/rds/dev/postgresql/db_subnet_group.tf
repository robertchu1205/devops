resource "aws_db_subnet_group" "hk-algo-d-rds-subnet" {
  description = "Managed by Terraform"
  name        = "hk-algo-d-rds-subnet"
  subnet_ids  = ["subnet-0a9fb80235b63192a", "subnet-0de1d566137ba344a"]

  tags = {
    Name = "algo"
  }

  tags_all = {
    Name = "algo"
  }

}
