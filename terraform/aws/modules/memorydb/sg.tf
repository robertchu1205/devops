resource "aws_security_group" "hk-algo-d-memorydb-redis-sg" {
  description = "Security group for hk-algo-d-memorydb-redis(Memorydb for Redis)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name   = "hk-algo-d-memorydb-redis-sg"
  vpc_id = "vpc-06edbb105065d9eef"

  tags = {
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

}
