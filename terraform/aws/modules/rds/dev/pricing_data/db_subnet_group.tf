resource "aws_db_subnet_group" "hk-algo-pricing-data-subnet" {
  description = "Managed by Terraform"
  name        = "hk-algo-pricing-data-subnet"
  subnet_ids  = ["subnet-0a9fb80235b63192a", "subnet-0de1d566137ba344a"]

  tags = {
    Name = "algo"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

    lifecycle {
        ignore_changes = [
          name
        ]
    }

}
