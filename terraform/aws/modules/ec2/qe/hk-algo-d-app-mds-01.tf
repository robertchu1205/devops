resource "aws_instance" "hk-algo-d-app-mds-01" {
  ami           = "ami-08640d2dd77438448"
  disable_api_stop = "true"
  disable_api_termination = "true"
  instance_type = "c5.xlarge"
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
    Name = "hk-algo-d-app-mds-01"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

  ebs_block_device {
    device_name = "/dev/sdb"
    volume_size = 100
    delete_on_termination = "false"
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