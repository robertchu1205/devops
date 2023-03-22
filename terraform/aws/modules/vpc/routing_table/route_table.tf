resource "aws_route_table" "rtb-00a97f093a3ce2a8f" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-07a0e98946bd32746"
  }

  route {
    cidr_block         = "192.168.0.0/20"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  route {
    cidr_block         = "192.168.12.0/24"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  route {
    cidr_block         = "192.168.16.0/24"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  route {
    cidr_block         = "192.168.200.0/23"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  tags = {
    Name = "public-subnet"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_route_table" "rtb-05e54d347996bc1ec" {
  propagating_vgws = ["vgw-06184653815f9d19f"]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-07a0e98946bd32746"
  }

  tags = {
    Name = "primary"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

  vpc_id = "vpc-06edbb105065d9eef"
}

resource "aws_route_table" "rtb-0ab4555e00785a362" {
  propagating_vgws = ["vgw-06184653815f9d19f"]

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0a9880666cc8971cc"
  }

  route {
    cidr_block         = "10.1.0.0/16"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  route {
    cidr_block         = "10.2.0.0/16"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  route {
    cidr_block         = "172.19.0.0/16"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  route {
    cidr_block         = "172.31.0.0/16"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  route {
    cidr_block         = "192.168.0.0/16"
    transit_gateway_id = "tgw-0548bb11fee5199e6"
  }

  tags = {
    Name = "private-subnet"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

  vpc_id = "vpc-06edbb105065d9eef"
}
