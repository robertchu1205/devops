resource "aws_elasticache_replication_group" "hk-algo-d-redis-cluster" {
  at_rest_encryption_enabled = "true"
  auto_minor_version_upgrade = "true"
  automatic_failover_enabled = "true"

  cluster_mode {
    num_node_groups         = "2"
    replicas_per_node_group = "2"
  }

  data_tiering_enabled          = "false"
  engine                        = "redis"
  engine_version                = "6.x"
  maintenance_window            = "sat:21:00-sat:22:00"
  multi_az_enabled              = "true"
  node_type                     = "cache.t3.medium"
  parameter_group_name          = "default.redis6.x.cluster.on"
  port                          = "6379"
  replication_group_description = " "
  replication_group_id          = "hk-algo-d-redis-cluster"
  security_group_ids            = ["sg-0daa694b04223c5d3"]
  snapshot_retention_limit      = "7"
  snapshot_window               = "20:00-21:00"
  subnet_group_name             = aws_elasticache_subnet_group.hk-algo-d-redis-subnet-group.name

  tags = {
    team = "algo"
  }

  tags_all = {
    team = "algo"
  }

  transit_encryption_enabled = "false"
}
