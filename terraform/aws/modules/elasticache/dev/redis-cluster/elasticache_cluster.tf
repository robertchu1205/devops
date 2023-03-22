resource "aws_elasticache_cluster" "hk-algo-d-redis-cluster-0001-001" {
  availability_zone    = "ap-east-1a"
  cluster_id           = "hk-algo-d-redis-cluster-0001-001"
  replication_group_id = aws_elasticache_replication_group.hk-algo-d-redis-cluster.replication_group_id

  tags = {
    team = "algo"
  }

  tags_all = {
    team = "algo"
  }
}

resource "aws_elasticache_cluster" "hk-algo-d-redis-cluster-0001-002" {
  availability_zone    = "ap-east-1b"
  cluster_id           = "hk-algo-d-redis-cluster-0001-002"
  replication_group_id = aws_elasticache_replication_group.hk-algo-d-redis-cluster.replication_group_id

  tags = {
    team = "algo"
  }

  tags_all = {
    team = "algo"
  }
}

resource "aws_elasticache_cluster" "hk-algo-d-redis-cluster-0001-003" {
  availability_zone    = "ap-east-1a"
  cluster_id           = "hk-algo-d-redis-cluster-0001-003"
  replication_group_id = aws_elasticache_replication_group.hk-algo-d-redis-cluster.replication_group_id

  tags = {
    team = "algo"
  }

  tags_all = {
    team = "algo"
  }
}

resource "aws_elasticache_cluster" "hk-algo-d-redis-cluster-0002-001" {
  availability_zone    = "ap-east-1b"
  cluster_id           = "hk-algo-d-redis-cluster-0002-001"
  replication_group_id = aws_elasticache_replication_group.hk-algo-d-redis-cluster.replication_group_id

  tags = {
    team = "algo"
  }

  tags_all = {
    team = "algo"
  }
}

resource "aws_elasticache_cluster" "hk-algo-d-redis-cluster-0002-002" {
  availability_zone    = "ap-east-1b"
  cluster_id           = "hk-algo-d-redis-cluster-0002-002"
  replication_group_id = aws_elasticache_replication_group.hk-algo-d-redis-cluster.replication_group_id

  tags = {
    team = "algo"
  }

  tags_all = {
    team = "algo"
  }
}

resource "aws_elasticache_cluster" "hk-algo-d-redis-cluster-0002-003" {
  availability_zone    = "ap-east-1a"
  cluster_id           = "hk-algo-d-redis-cluster-0002-003"
  replication_group_id = aws_elasticache_replication_group.hk-algo-d-redis-cluster.replication_group_id

  tags = {
    team = "algo"
  }

  tags_all = {
    team = "algo"
  }
}
