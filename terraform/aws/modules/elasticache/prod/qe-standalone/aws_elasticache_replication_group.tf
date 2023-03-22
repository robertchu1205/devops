resource "aws_elasticache_replication_group" "hk-algo-prd-qe-redis" {
  automatic_failover_enabled  = true
  replication_group_description = "toc prd qe"
  replication_group_id = "hk-algo-prd-qe-redis"
  node_type            = "cache.r6g.xlarge"
  number_cache_clusters      = 3
  parameter_group_name        = "default.redis6.x"
  multi_az_enabled = true
  lifecycle {
    ignore_changes = [number_cache_clusters]
  }
  security_group_ids = ["sg-0daa694b04223c5d3"]
  subnet_group_name = "hk-algo-d-redis-subnet-group"
  snapshot_retention_limit = 1
  maintenance_window            = "sat:20:00-sat:21:00"
  snapshot_window               = "21:30-22:30"
  log_delivery_configuration {
    destination      = aws_cloudwatch_log_group.hk-algo-prd-qe-redis-slow.name
    destination_type = "cloudwatch-logs"
    log_format       = "text"
    log_type         = "slow-log"
  }
  log_delivery_configuration {
    destination      = aws_cloudwatch_log_group.hk-algo-prd-qe-redis-engine.name
    destination_type = "cloudwatch-logs"
    log_format       = "text"
    log_type         = "engine-log"
  }
  apply_immediately = true
}