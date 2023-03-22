resource "aws_instance" "hk-algo-nginx-proxy" {
  ami           = "ami-03a7ea774ca62f937"
  disable_api_stop = "true"
  disable_api_termination = "true"
  instance_type = "t3.micro"
  key_name = "alicloud-algo-jump_aqumon-user"
  vpc_security_group_ids = ["sg-00edf259e1bbcb705"]
  subnet_id              = "subnet-0de1d566137ba344a"
  user_data_replace_on_change = "true"
  volume_tags = {
    team = "algo"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
  tags = {
    team = "algo"
    Name = "hk-algo-nginx-proxy"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

  root_block_device {
    volume_size = 40
    delete_on_termination = "false"
  }

  private_dns_name_options {
    hostname_type = "resource-name"
  }

  lifecycle {
    ignore_changes = [ami,ebs_block_device,root_block_device]
  }
}