resource "aws_memorydb_subnet_group" "hk-algo-d-memorydb-subnet" {
  name       = "hk-algo-d-subnet-group"
  subnet_ids = ["subnet-0de1d566137ba344a", "subnet-0a9fb80235b63192a"]

  tags = {
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

}