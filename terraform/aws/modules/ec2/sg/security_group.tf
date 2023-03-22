resource "aws_security_group" "default_sg-00edf259e1bbcb705" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow ALL"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    description = "allow hosts from same SG"
    from_port   = "0"
    protocol    = "-1"
    self        = "true"
    to_port     = "0"
  }

  name   = "default"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "eks-cluster-sg-hk-algo-d-eks-cluster-1948180449_sg-06d46bddbb82e2488" {
  description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name = "eks-cluster-sg-hk-algo-d-eks-cluster-1948180449"

  tags = {
    Name                                          = "eks-cluster-sg-hk-algo-d-eks-cluster-1948180449"
    "kubernetes.io/cluster/hk-algo-d-eks-cluster" = "owned"
  }

  tags_all = {
    Name                                          = "eks-cluster-sg-hk-algo-d-eks-cluster-1948180449"
    "kubernetes.io/cluster/hk-algo-d-eks-cluster" = "owned"
  }

  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "eks-remoteAccess-bac0b65e-e97f-b761-b245-fb9182f480d6_sg-0a0fc4b6b92f8467e" {
  description = "Security group for all nodes in the nodeGroup to allow SSH access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "eks-remoteAccess-bac0b65e-e97f-b761-b245-fb9182f480d6"

  tags = {
    eks                  = "hk-algo-d-eks-cluster-workernodes-1a"
    "eks:nodegroup-name" = "hk-algo-d-eks-cluster-workernodes-1a"
  }

  tags_all = {
    eks                  = "hk-algo-d-eks-cluster-workernodes-1a"
    "eks:nodegroup-name" = "hk-algo-d-eks-cluster-workernodes-1a"
  }

  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "eks-remoteAccess-d0c0b65c-8db6-9229-732a-e80c38afbf77_sg-08df93bae9696ca3a" {
  description = "Security group for all nodes in the nodeGroup to allow SSH access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "eks-remoteAccess-d0c0b65c-8db6-9229-732a-e80c38afbf77"

  tags = {
    eks                  = "hk-algo-d-eks-cluster-workernodes-1b"
    "eks:nodegroup-name" = "hk-algo-d-eks-cluster-workernodes-1b"
  }

  tags_all = {
    eks                  = "hk-algo-d-eks-cluster-workernodes-1b"
    "eks:nodegroup-name" = "hk-algo-d-eks-cluster-workernodes-1b"
  }

  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "hk-algo-d-rds-mysql-sg_sg-0e403e90439b44788" {
  description = "Security group for RDS MySQL"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  name   = "hk-algo-d-rds-mysql-sg"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "hk-algo-d-rds-postgresql-sg_sg-097b0061189fac29e" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["172.18.9.0/24",]
    description      = "hk-algo-d-eks-cluster"
    from_port        = 5432
    protocol         = "tcp"
    self             = false
    to_port          = 6432
  }
  
  ingress{
    cidr_blocks      = [
        "192.168.0.0/16",
    ]
    description      = "hk office range"
    from_port        = 5432
    protocol         = "tcp"
    self             = false
    to_port          = 5432
  }

  name   = "hk-algo-d-rds-postgresql-sg"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "hk-algo-d-redis-sg_sg-0daa694b04223c5d3" {
  description = "Security group for redis dev cluster"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["172.18.9.0/24",]
            description      = "hk-algo-d-eks-cluster"
            from_port        = 6379
            protocol         = "tcp"
            self             = false
            to_port          = 6379
  }
  
  ingress{
            cidr_blocks      = [
                "192.168.0.0/16",
            ]
            description      = "hk office range"
            from_port        = 6379
            protocol         = "tcp"
            self             = false
            to_port          = 6379
  }
  




  name   = "hk-algo-d-redis-sg"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "l2tp_sg-0822d4b9fe0340365" {
  description = "SG for L2TP Server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "L2TP"
    from_port   = "1701"
    protocol    = "udp"
    self        = "false"
    to_port     = "1701"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "L2TP"
    from_port   = "4500"
    protocol    = "udp"
    self        = "false"
    to_port     = "4500"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "L2TP"
    from_port   = "500"
    protocol    = "udp"
    self        = "false"
    to_port     = "500"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["172.31.0.0/16", "192.168.0.0/16"]
    description = "SSH"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["192.168.200.0/23"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "l2tp"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "launch-wizard-1_sg-064f73eca987e9ce4" {
  description = "launch-wizard created 2022-06-01T01:36:40.974Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-1"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "launch-wizard-2_sg-01983a28cc67360f1" {
  description = "launch-wizard created 2022-06-01T01:57:11.803Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-2"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "launch-wizard-3_sg-0523b1815593f0248" {
  description = "launch-wizard-3 created 2022-06-01T01:58:06.071Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-3"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "launch-wizard-4_sg-0234a92ddc6aad330" {
  description = "launch-wizard created 2022-06-09T01:45:49.867Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["192.168.200.0/23"]
    description = "sz-office"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-4"
  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_security_group" "wall-hopping_sg-013f6c88d686f37d2" {
  description = "hk-wall-hopping-server only"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["192.168.200.0/23"]
    description = "sz-office"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["47.112.158.191/32"]
    description = "sz-jump-pub"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name   = "wall-hopping"
  vpc_id = "vpc-06edbb105065d9eef"
}
