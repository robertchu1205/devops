resource "aws_cloudwatch_log_group" "hk-algo-prd-qe-redis-slow" {
  name = "hk-algo-prd-qe-redis-slow"
}

resource "aws_cloudwatch_log_group" "hk-algo-prd-qe-redis-engine" {
  name = "hk-algo-prd-qe-redis-engine"
}