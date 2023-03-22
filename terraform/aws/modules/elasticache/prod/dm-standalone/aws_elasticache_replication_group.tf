resource "aws_elasticache_replication_group" "hk-algo-p-redis" {
  automatic_failover_enabled  = true
  description = "production dm & dms redis"
  replication_group_id = "hk-algo-p-redis-standalone"
  node_type            = "cache.t3.medium"
  num_cache_clusters      = 3
  parameter_group_name        = "dms-prod"
  multi_az_enabled = true
  lifecycle {
    ignore_changes = [number_cache_clusters]
  }
  security_group_ids = ["sg-087053043a8f3b1bc"]
  subnet_group_name = "hk-algo-p-redis-subnet-group"
  snapshot_retention_limit = 7
  maintenance_window            = "sat:20:00-sat:21:00"
  snapshot_window               = "21:30-22:30"
  log_delivery_configuration {
    destination      = aws_cloudwatch_log_group.hk-algo-p-redis-slow.name
    destination_type = "cloudwatch-logs"
    log_format       = "text"
    log_type         = "slow-log"
  }
  log_delivery_configuration {
    destination      = aws_cloudwatch_log_group.hk-algo-p-redis-engine.name
    destination_type = "cloudwatch-logs"
    log_format       = "text"
    log_type         = "engine-log"
  }
  apply_immediately = true
}