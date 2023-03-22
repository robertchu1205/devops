resource "aws_cloudwatch_log_group" "hk-algo-p-redis-slow" {
  name = "hk-algo-p-redis-logs-slow"
}

resource "aws_cloudwatch_log_group" "hk-algo-p-redis-engine" {
  name = "hk-algo-p-redis-logs-engine"
}