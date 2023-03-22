resource "aws_instance" "hk-algo-P-morgan-stanley-proxy" {
  ami           = "ami-01c628c385b509fdc"
  disable_api_stop = "true"
  disable_api_termination = "true"
  source_dest_check = false
  instance_type = "t3.nano"
  ebs_optimized = "true"
  iam_instance_profile = "default-instance-profile"
  key_name = "alicloud-algo-jump_aqumon-user"
  vpc_security_group_ids = ["sg-01fb3db06c4a7e428","sg-0e80280672cc9585a"]
  subnet_id              = "subnet-0de1d566137ba344a"
  user_data_replace_on_change = "true"
  volume_tags = {
    team = "algo"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
  tags = {
    team = "algo"
    Name = "hk-algo-P-morgan-stanley-proxy"
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
