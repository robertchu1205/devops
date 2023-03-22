resource "aws_instance" "hk-algo-twsToC" {
  ami           = "ami-05149af36e1fb3ee4"
  disable_api_stop = "true"
  disable_api_termination = "true"
  instance_type = "t3.large"
  iam_instance_profile = "default-instance-profile"
  key_name = "alicloud-algo-jump_aqumon-user"
  vpc_security_group_ids = ["sg-00edf259e1bbcb705"]
  subnet_id              = "subnet-0339b072df6a1f486"
  user_data_replace_on_change = "true"
  volume_tags = {
    team = "algo"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }
  tags = {
    team = "algo"
    Name = "hk-algo-twsToC"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

  root_block_device {
    volume_size = 80
    delete_on_termination = "false"
  }

  private_dns_name_options {
    hostname_type = "resource-name"
  }

  lifecycle {
    ignore_changes = [ami,ebs_block_device,root_block_device]
  }
}