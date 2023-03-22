resource "aws_elasticache_subnet_group" "hk-algo-d-redis-subnet-group" {
  description = " "
  name        = "hk-algo-d-redis-subnet-group"
  subnet_ids  = ["subnet-015e798b75c0de098", "subnet-0339b072df6a1f486"]

  tags = {
    team = "algo"
  }

  tags_all = {
    team = "algo"
  }
}
