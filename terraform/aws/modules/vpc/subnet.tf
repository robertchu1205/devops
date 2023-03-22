resource "aws_subnet" "hk-algo-prod-eks-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.8.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name = "hk-algo-prod-eks-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-prod-eks-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.10.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name = "hk-algo-prod-eks-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-dev-eks-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.9.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name = "hk-algo-dev-eks-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-dev-eks-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.11.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name = "hk-algo-dev-eks-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
    "kubernetes.io/role/internal-elb" = "1"
  }
}



resource "aws_subnet" "hk-algo-prod-private-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.12.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name = "hk-algo-prod-private-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-prod-private-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.13.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name = "hk-algo-prod-private-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-dev-private-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.4.0/24"
  availability_zone = "ap-east-1b"
  enable_resource_name_dns_a_record_on_launch    = true


  tags = {
    Name = "hk-algo-dev-private-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-it-prod-private-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.6.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name = "hk-it-prod-private-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-it-dev-private-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.2.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name = "hk-it-dev-private-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-dev-private-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.5.0/24"
  availability_zone = "ap-east-1a"
  enable_resource_name_dns_a_record_on_launch    = true

  tags = {
    Name = "hk-algo-dev-private-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-it-prod-private-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.7.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name = "hk-it-prod-private-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-it-dev-private-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.3.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name = "hk-it-dev-private-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-bastion-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.15.64/28"
  availability_zone = "ap-east-1b"

  tags = {
    Name = "hk-algo-bastion-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-bastion-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.15.80/28"
  availability_zone = "ap-east-1a"

  tags = {
    Name = "hk-algo-bastion-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-it-eks-dev-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.0.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name = "hk-it-eks-dev-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-it-eks-dev-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.1.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name = "hk-it-eks-dev-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}


resource "aws_subnet" "hk-algo-private-bastion-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.15.96/28"
  availability_zone = "ap-east-1b"
  enable_resource_name_dns_a_record_on_launch    = true

  tags = {
    Name = "hk-algo-private-bastion-1b"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
    "kubernetes.io/role/internal-elb" = "1"
  }
}

resource "aws_subnet" "hk-algo-private-bastion-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.15.112/28"
  availability_zone = "ap-east-1a"
  enable_resource_name_dns_a_record_on_launch    = true

  tags = {
    Name = "hk-algo-private-bastion-1a"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
    "kubernetes.io/role/internal-elb" = "1"
  }
}

resource "aws_subnet" "hk-algo-dev-private-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.15.224/28"
  availability_zone = "ap-east-1c"

  tags = {
    Name = "hk-algo-dev-private-1c"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}

resource "aws_subnet" "hk-algo-prod-private-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.18.15.240/28"
  availability_zone = "ap-east-1c"

  tags = {
    Name = "hk-algo-prod-private-1c"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
}
