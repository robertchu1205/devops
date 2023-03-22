resource "aws_memorydb_cluster" "hk-algo-d-memorydb-cluster" {
  acl_name                 = "open-access"
  name                     = "hk-algo-d-memorydb-cluster"
  node_type                = "db.t4g.small"
  num_shards               = 2
  security_group_ids       = [aws_security_group.hk-algo-d-memorydb-redis-sg.id]
  snapshot_retention_limit = 7
  subnet_group_name        = aws_memorydb_subnet_group.hk-algo-d-memorydb-subnet.id
  tls_enabled              = false

  depends_on = [
    aws_security_group.hk-algo-d-memorydb-redis-sg
  ]
  tags = {
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}