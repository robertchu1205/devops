resource "aws_instance" "tfer--i-002d988dde2b7bfbf_" {
  ami                         = "ami-0c50341172453e27d"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-36c12c60-1a54-a0a9-5442-d7dd150a9b61"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-00df56d30afb40a7b"
    name    = "eks-36c12c60-1a54-a0a9-5442-d7dd150a9b61"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.8.199"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "20"
    volume_type           = "gp2"
  }

  secondary_private_ips = ["172.18.8.115", "172.18.8.118", "172.18.8.142", "172.18.8.171", "172.18.8.179", "172.18.8.192", "172.18.8.240", "172.18.8.244", "172.18.8.25", "172.18.8.34", "172.18.8.48", "172.18.8.57", "172.18.8.63", "172.18.8.78"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0da14af7f50989dc1"

  tags = {
    "eks:cluster-name"                                  = "hk-algo-prd-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-prd-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-prd-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-prd-eks-cluster"     = "owned"
  }

  tags_all = {
    "eks:cluster-name"                                  = "hk-algo-prd-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-prd-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-prd-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-prd-eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVaM2ROVkVFMFRsUnJNRTVHYjFoRVZFMTVUVVJqZVU5VVFUUk9WR3N3VGtadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUVmhTQ25ORmFXaFRkVnAxU2xKeE5Ya3JUREp6YkdOS2FHVmpNV1EzVDA1VVlqSk1WV2htV1hSR2VsbEVPRUpoYVVsaWNFWkliVFIzZFV3eVJubElkaXRrUVdRS1dXUnlXVmRVVFU4d2VFcENkQ3N3VUdOeFdHaENZbEJXT1RoRFVrcG1iME5PZG1obGNsTXlORWhRUVhWMFpHNUNWRVJ2YzBSM1pGazJZVE52YkV4cE5ncHRhVXRtWldGNU1GZG1kM3AyZFhadU5VcENaMlE0V25aVE1sVTJhRnByZUhkUmQyVkVUQ3N2WWk4MlEyTTVSbVJUYzBONWJ6VmFhalpQU2tNeVdsaHFDamR1Y25CNFFYWjBORXR2Wm14eVFUUkRMM1Y2UjJSSVFtUkhiVUUxVTFKdVpVbGxWWFJxYW1GWFlXWnhla2RLWkUwd1NuQnlOMkoyVEhkUE9IQlFZek1LWWxGVFFrYzJZelJyTTIxVmVXOXBWVTVpYmxCT2VEUk1WV1EyTDFKV04yWmhkek5zVVdoNVVUWkZWRWRhUjBSNmJHSTJVMmM0V1U1RE5rb3daM2h4VlFwM1ZFcFRiblJLT0dkVVprcExaWFJtVEhBd1EwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaT2R6QnJZVVpPVlVKRVZYWjZRVVJwYlRoRVIzRkpaRzV3UkZOTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJUVXBDYVVONVNWRjBVMmRaZEdKM1JtaHNNZ3BGYVVwaUwzcHljR0p1TkV0bk4zaDNla3BwWVc1UGEyUTJjMEZZWXpZdmVGZEVXbmwwUm1WUFRFbENiMFpxSzBGeGRrRm1UR28xZEVac1RVVm1kakZNQ21wSldrZEVNR0U1VHpKd1JuTlVTVzUxWVVWQ1lrMVdVQzlhUjBadFJpOVliWGRNYkRKYU4yRXJLM2hKV0ZkR1ZsZFJaakJvZEZrdmVGWktPRmwzVFVNS1FuSjVTMFJ1ZUZKWVNHRmpNMVozVkhCSFlqSjJiR0k0WTBVMFdrZE9USFZGVTJ0R2FqaDNSelJ1U3pGck0yeE1Xa2h3VGxwd1lpOVBjbkY0Unk5YWRBcDZOVkpxVGtOUlRXYzJVMDVXVldGdVVGZFVhRzluUm10YWJ5OWFVRmgxUkhKV2JFczVZV3hhTlVWTWVFdHBkRk5VTm1zNU1uRlJTMk13Ym1vcmNWaFFDbHB5UWxBMldFaENibEJoWkZFM04ycGliRU13WTJ4dGJHdHRaamx0TVROQ1dVRklNakZ6ZERsekwzRldaWEJwTUZKcU5rWlFNalpEU21WWE5ESjFXVlFLY0VSRlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly8wNEM2QzlDNEE0MzZDODgwRTYwM0NCQkEzOThCM0E0NS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDQuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1wcmQtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wYzUwMzQxMTcyNDUzZTI3ZCxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1wcmQtZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWIsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-0055c7f4669030349", "sg-09dccf0ad55fab683"]
}

resource "aws_instance" "tfer--i-01c4fb2e15a95bf4e_sh-d-app-bi-4" {
  ami                         = "ami-0d4d24e6b3f25866f"
  associate_public_ip_address = "true"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "haoxin.chen"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.2.180"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "80"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.2.44"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0a35bdac0d3d5b133"

  tags = {
    Name                    = "sh-d-app-bi-4"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tags_all = {
    Name                    = "sh-d-app-bi-4"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0435abaa3e8842a4b"]
}

resource "aws_instance" "tfer--i-0247065fce6561023_" {
  ami                         = "ami-05dbcdc14e7d43473"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcx"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                               = "kubernetes-dynamic-pvc-848f042c-21a7-46e4-b0fd-d5b9b8e7352e"
      "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                = "pvc-848f042c-21a7-46e4-b0fd-d5b9b8e7352e"
      "kubernetes.io/created-for/pvc/name"               = "data-zookeeper-2"
      "kubernetes.io/created-for/pvc/namespace"          = "zookeeper"
      map-migrated-cnmap                                 = "d-server-0067yxz39nth5o"
      map-migrated-project-id                            = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "8"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-e6c10aa4-ad17-3a41-3069-5b97b1afe047"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-00fb9f4137bf1854c"
    name    = "eks-e6c10aa4-ad17-3a41-3069-5b97b1afe047"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.9.41"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.9.133", "172.18.9.149", "172.18.9.191", "172.18.9.221", "172.18.9.29", "172.18.9.30", "172.18.9.42", "172.18.9.49", "172.18.9.60", "172.18.9.77", "172.18.9.80", "172.18.9.83", "172.18.9.85", "172.18.9.97"]
  source_dest_check     = "true"
  subnet_id             = "subnet-003dab95b1493d5fa"

  tags = {
    "eks:cluster-name"                                     = "hk-algo-stg-eks-02-cluster"
    "eks:nodegroup-name"                                   = "hk-algo-stg-eks-02-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                    = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-02-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster"     = "owned"
  }

  tags_all = {
    "eks:cluster-name"                                     = "hk-algo-stg-eks-02-cluster"
    "eks:nodegroup-name"                                   = "hk-algo-stg-eks-02-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                    = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-02-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVZM2hQVkVFelRVUk5NRTFzYjFoRVZFMTVUVVJqZUU1cVFUTk5SRTB3VFd4dmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJTMUYzQ2tjNGRUUm5jbGMyVFVneE1tZGxaRmh1ZEcxakszUXZXV1ZNTDNvMmVtbHlLMko0Vm1sckx6UTJRaXMzVTAwMlNVMVdPRlYwWkdaa1RVa3JLMDl4U1RNS2RsVkdRMlpTZEZSU2VsSmxZbVpIVDI1eE4zRnhha2RSVFdrNEsyaDRRVE5sYVRKaFExbG9WbnBIYWtsV1FWUmthbWhWZWtsSE1tMUxkelpKU1ZOVmF3cDFiWEZDYTBOUE5GUXZRalZEWjFKTmJHVkthRlJXYXpBelZHMU5RVElyZEhBdlJFd3lWR05GYml0VmFuRjJjM0IxYzNsMlVUTjRSRUlyWVVOeFMycEJDbTB2ZDNZeVYzbENlRWRGUW1KMmFqbGpWV1p3VkhWbVNtZGpiRzkzYTNkMmNFaEJXRlJZUms4NUsyZHZWa0pxUkZWemFuSXhOV1ZYY3paamIwZDNZbTRLUjNaTmMxZERXamRQYlZsYWVWZDNZbFpSZVUwNWRYZGtPSHBLVDNOa1pXSTVabGxWZFVSTUwwcHBibFF4T1U5NmNXMDFhbUp4VGpacVdFeHhVRU15YndwRmRscEZTM1p3TkN0S1J6aGtSSEZqV0RGalEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaTVZrcFRNVFJTZG01TGJteEZWVm8xUlRseGVHcE9aMEZ6Wm1aTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJRV2haVTJkb1ZuQmFLMWgxWmxwUVJrWmhad3ByVEhWcWNUaG1NMWRhT0VGSFdGVkdla05ZVUhReGJtbENZVkpKYVdOdEswcGpUbXBGTTBoRloxWjZZMDA0ZWxwMVVscE9ablJOY3pSa2VEY3pNMWt3Q2xNM2FFZElZbFpMUlRRNWJUWkVObGx5YVd3NE0zZG1VRGt5VEcxMWQwWllRMFpYVUhKQ2JHdG1NVkE1ZW5JemVWUmpURW96VUVOM2VURllVVTFZV1d3S1J5OHZjbXh4WmsxelZrRkpZbFUzYVZST1pYbGpka05ZY1hnME1ESjRMMFEzWkhGQk9YYzJiVXMwTjJOdU5sSnFhVWRyU0VWcVJFOVVaRXg1TTFONllnbzFVemc1ZW5WVlowTkhNa3hrTmtOVk0zWlFla1JUTnpoeVZHeHVhSFZ4V0U1YWFrWkVNak5GZUZWNmNYVjFTSEJJU0VReWRYTklTbmhqVjA4MWIxSTVDbVJXZFRFclRWWXhWbU5pWjFseE1sUnFUWFJOU0V0b2R6SjVVRkpEYzJoS1drTlNWSFp5TVhBek9Ya3lXRkYwTW1WQ1VYVmFORWhPZWxWblpGZzRjbk1LYm1NMFBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly84MTUwRTY0RDdDNDMzRTFBNEQwQTdGNEJENDgzNTcyQS55bDQuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDMuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1zdGctZWtzLTAyLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wNWRiY2RjMTRlN2Q0MzQ3MyxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1zdGctZWtzLTAyLWNsdXN0ZXItd29ya2Vybm9kZXMtMWIsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-0e5839a2f86592dad", "sg-0fc2158c28c2e85c0"]
}

resource "aws_instance" "tfer--i-02801d22c6f78c34d_hk-algo-twsToC" {
  ami                         = "ami-05149af36e1fb3ee4"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "true"
  disable_api_termination = "true"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "resource-name"
  }

  private_ip = "172.18.4.31"

  root_block_device {
    delete_on_termination = "false"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    volume_size = "80"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0339b072df6a1f486"

  tags = {
    Name                    = "hk-algo-twsToC"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tags_all = {
    Name                    = "hk-algo-twsToC"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-00edf259e1bbcb705"]
}

resource "aws_instance" "tfer--i-0342c954b216df811_hk-algo-p-app-mds-02" {
  ami                         = "ami-05149af36e1fb3ee4"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count          = "4"
  cpu_threads_per_core    = "2"
  disable_api_stop        = "true"
  disable_api_termination = "true"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/sdb"
    encrypted             = "false"
    iops                  = "0"
    snapshot_id           = "snap-017ac7eecd5724346"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    throughput  = "0"
    volume_size = "500"
    volume_type = "standard"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "r5n.2xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "resource-name"
  }

  private_ip = "172.18.4.71"

  root_block_device {
    delete_on_termination = "false"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    volume_size = "40"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0339b072df6a1f486"

  tags = {
    Name                    = "hk-algo-p-app-mds-02"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tags_all = {
    Name                    = "hk-algo-p-app-mds-02"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-00edf259e1bbcb705"]
}

resource "aws_instance" "tfer--i-034faff2b5915add1_hk-algo-preprd-app-qekl-02" {
  ami                         = "ami-0da906d64517f4f65"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count          = "4"
  cpu_threads_per_core    = "2"
  disable_api_stop        = "true"
  disable_api_termination = "true"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/sdb"
    encrypted             = "false"
    iops                  = "0"
    snapshot_id           = "snap-036554e4ff774e3d4"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    throughput  = "0"
    volume_size = "500"
    volume_type = "standard"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "r5n.2xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "resource-name"
  }

  private_ip = "172.18.4.121"

  root_block_device {
    delete_on_termination = "false"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    volume_size = "40"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0339b072df6a1f486"

  tags = {
    Name                    = "hk-algo-preprd-app-qekl-02"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tags_all = {
    Name                    = "hk-algo-preprd-app-qekl-02"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-00edf259e1bbcb705"]
}

resource "aws_instance" "tfer--i-052b42ba45c058fba_" {
  ami                         = "ami-05dbcdc14e7d43473"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdba"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-5b5d9ce0-a52f-493d-b35a-4db4020b94af"
      "kubernetes.io/cluster/hk-algo-stg-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-5b5d9ce0-a52f-493d-b35a-4db4020b94af"
      "kubernetes.io/created-for/pvc/name"            = "redisinsight-pvc"
      "kubernetes.io/created-for/pvc/namespace"       = "redis"
    }

    throughput  = "0"
    volume_size = "1"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-4ac0edcf-def8-53a3-aeb6-6a470e84926d"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-0fccab5d9a208e49a"
    name    = "eks-4ac0edcf-def8-53a3-aeb6-6a470e84926d"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.9.57"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.9.117", "172.18.9.162", "172.18.9.164", "172.18.9.170", "172.18.9.190", "172.18.9.193", "172.18.9.20", "172.18.9.215", "172.18.9.223", "172.18.9.240", "172.18.9.247", "172.18.9.76", "172.18.9.9", "172.18.9.94"]
  source_dest_check     = "true"
  subnet_id             = "subnet-003dab95b1493d5fa"

  tags = {
    "eks:cluster-name"                                  = "hk-algo-stg-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-stg-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-cluster"     = "owned"
    map-migrated-cnmap                                  = "d-server-0067yxz39nth5o"
    map-migrated-project-id                             = "GCR-Migration-2021-398"
  }

  tags_all = {
    "eks:cluster-name"                                  = "hk-algo-stg-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-stg-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-cluster"     = "owned"
    map-migrated-cnmap                                  = "d-server-0067yxz39nth5o"
    map-migrated-project-id                             = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVZM2RQUkVGNVRXcEJkMDFHYjFoRVZFMTVUVVJqZDA1VVFYbE5ha0YzVFVadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUR2s0Q2psMGRWRm5aRGhZVkRsTVFuUXZVREI2ZW1ac0wyOHdTazV3VDI5UGNFVjBXblJUWlVaWmJESk5hRFpUY25KME5tTnNaMnBxZUhGS05EZ3lNVUpVY1hJS00xVXpZWGhoZFZreFNTOUNNbE0zT0ROclJUbHhPRGRzWldkbmMzZG1OMnQzZW5oRWJYSkdVemswZWxCYU56QnpVVEJ4U25oalZIaFllSGRpY1hwV1pRcGxibWQwZUhCUU9TOVVhSHBKU201T2RXSjNkazh5UW04NVRWSmpZWGMzZEVrMGIyc3JRMDFPUmxoaVFWb3lXVWt2VVZwbmRXZFdjSFZIVVhoR09ITlBDbmhpY2xvNVJYRllOSGgxWlVSUVJFazVOQ3RRUmxkeVNIWmtiMDVhVVRWalkyWlpORU5uY0RnelQzcEpSMUJPYjI5Q2VsUlpLM1poYjFnd05tUlNhbFFLZEU5b05tdEZkR3RCUVdoclJFaDFlUzlIY2tKdFdXMTZRekY1V0RsTllUWXJSRUZwUjNWMFpsVlhlazAzYUdsQk9WQnhXRzFqU3k5VFVsQmlhM2hUYUFvck5rbFRRMDlUWVZrM2JucG1NSEp1Wms1elEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaTFNFd3dkMGxtZFdOb1VWaENURVozTXpkc1RTOHZkSFZRZVhKTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSaXN6SzBWTFFsQk9PRXB0ZGlzNFJrRktZUXAzTDIxRVlrVlNXRGRwZG1NelZHVlVTVzAyUmt4MlNUYzVkR2hzYW5aNmIxWTJPV3R6VURsRmVXSkdVblJaUjBKSE1VTlBUMXBGVXpSeFFVUkVTemRrQ20xc1pETjNUWFZCYlVWNGFXUk1NSFpYYkdwcldqQnlabUl3VkUweFVWTnJlRlJqWjA4d1FVdGhUR2hJUnpSWk5XUnVVa2d5UVRsVWRrSlBWelZRUWt3S2NHcFFTMjQzVkdORUsydFZUbUp5UlZoV1J6VkJjamhETHpOeGFGQlNNRU0xWnk4NUwwZHZha1JTUnpkVWJUbG5ia2x5WTFaR1RHSnNNRzkzTkRCRFpRcFFTMG80WVRaR1pVeHBVV2N4TUcxT1JqSldUWGhqTUVkSGRuSjFaV2cwZWxCU2RqbFZhbkJqVmpsSU9XNXVjVVE0YjIxcFZteFZSMmczUlVwbU1XOHpDbTlXVVdkMVkxbFVjREkyVmtsWFRWWlJXVEJwVkdsbFFWZ3JOR0YyU0RSdVVHRm1aMHhQU0V4cVl6SkVTemh2VW5kNFpuUlZOa2wyWlVKSU1tWkRSRkVLTkhaSlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly80RDlDNDkxNEIwM0VGRkRFQTBGQzc1OTdEOEIzMDA5OS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDIuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1zdGctZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wNWRiY2RjMTRlN2Q0MzQ3MyxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1zdGctZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWIsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-012a6b8bd9819c873", "sg-01c7ed2b9196ddf49"]
}

resource "aws_instance" "tfer--i-05721d99ccff9a9fd_hk-algo-P-crypto-trading-01" {
  ami                         = "ami-08640d2dd77438448"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "true"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/sdb"
    encrypted             = "false"
    iops                  = "0"
    snapshot_id           = "snap-06fd3c6bd4c8e95a5"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    throughput  = "0"
    volume_size = "200"
    volume_type = "standard"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "resource-name"
  }

  private_ip = "172.18.12.79"

  root_block_device {
    delete_on_termination = "false"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    volume_size = "40"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0de1d566137ba344a"

  tags = {
    Name                    = "hk-algo-P-crypto-trading-01"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tags_all = {
    Name                    = "hk-algo-P-crypto-trading-01"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-001f79b884aec8f12"]
}

resource "aws_instance" "tfer--i-05deb841a0a7746d1_" {
  ami                         = "ami-05dbcdc14e7d43473"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbv"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                               = "kubernetes-dynamic-pvc-f41d8d84-6716-4bf9-93d0-5dcff6122855"
      "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                = "pvc-f41d8d84-6716-4bf9-93d0-5dcff6122855"
      "kubernetes.io/created-for/pvc/name"               = "data-zookeeper-0"
      "kubernetes.io/created-for/pvc/namespace"          = "zookeeper"
      map-migrated-cnmap                                 = "d-server-0067yxz39nth5o"
      map-migrated-project-id                            = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "8"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-e6c10aa4-ad17-3a41-3069-5b97b1afe047"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-00fb9f4137bf1854c"
    name    = "eks-e6c10aa4-ad17-3a41-3069-5b97b1afe047"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.9.173"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.9.109", "172.18.9.130", "172.18.9.141", "172.18.9.144", "172.18.9.175", "172.18.9.176", "172.18.9.179", "172.18.9.186", "172.18.9.219", "172.18.9.241", "172.18.9.245", "172.18.9.48", "172.18.9.50", "172.18.9.92"]
  source_dest_check     = "true"
  subnet_id             = "subnet-003dab95b1493d5fa"

  tags = {
    "eks:cluster-name"                                     = "hk-algo-stg-eks-02-cluster"
    "eks:nodegroup-name"                                   = "hk-algo-stg-eks-02-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                    = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-02-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster"     = "owned"
  }

  tags_all = {
    "eks:cluster-name"                                     = "hk-algo-stg-eks-02-cluster"
    "eks:nodegroup-name"                                   = "hk-algo-stg-eks-02-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                    = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-02-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVZM2hQVkVFelRVUk5NRTFzYjFoRVZFMTVUVVJqZUU1cVFUTk5SRTB3VFd4dmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJTMUYzQ2tjNGRUUm5jbGMyVFVneE1tZGxaRmh1ZEcxakszUXZXV1ZNTDNvMmVtbHlLMko0Vm1sckx6UTJRaXMzVTAwMlNVMVdPRlYwWkdaa1RVa3JLMDl4U1RNS2RsVkdRMlpTZEZSU2VsSmxZbVpIVDI1eE4zRnhha2RSVFdrNEsyaDRRVE5sYVRKaFExbG9WbnBIYWtsV1FWUmthbWhWZWtsSE1tMUxkelpKU1ZOVmF3cDFiWEZDYTBOUE5GUXZRalZEWjFKTmJHVkthRlJXYXpBelZHMU5RVElyZEhBdlJFd3lWR05GYml0VmFuRjJjM0IxYzNsMlVUTjRSRUlyWVVOeFMycEJDbTB2ZDNZeVYzbENlRWRGUW1KMmFqbGpWV1p3VkhWbVNtZGpiRzkzYTNkMmNFaEJXRlJZUms4NUsyZHZWa0pxUkZWemFuSXhOV1ZYY3paamIwZDNZbTRLUjNaTmMxZERXamRQYlZsYWVWZDNZbFpSZVUwNWRYZGtPSHBLVDNOa1pXSTVabGxWZFVSTUwwcHBibFF4T1U5NmNXMDFhbUp4VGpacVdFeHhVRU15YndwRmRscEZTM1p3TkN0S1J6aGtSSEZqV0RGalEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaTVZrcFRNVFJTZG01TGJteEZWVm8xUlRseGVHcE9aMEZ6Wm1aTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJRV2haVTJkb1ZuQmFLMWgxWmxwUVJrWmhad3ByVEhWcWNUaG1NMWRhT0VGSFdGVkdla05ZVUhReGJtbENZVkpKYVdOdEswcGpUbXBGTTBoRloxWjZZMDA0ZWxwMVVscE9ablJOY3pSa2VEY3pNMWt3Q2xNM2FFZElZbFpMUlRRNWJUWkVObGx5YVd3NE0zZG1VRGt5VEcxMWQwWllRMFpYVUhKQ2JHdG1NVkE1ZW5JemVWUmpURW96VUVOM2VURllVVTFZV1d3S1J5OHZjbXh4WmsxelZrRkpZbFUzYVZST1pYbGpka05ZY1hnME1ESjRMMFEzWkhGQk9YYzJiVXMwTjJOdU5sSnFhVWRyU0VWcVJFOVVaRXg1TTFONllnbzFVemc1ZW5WVlowTkhNa3hrTmtOVk0zWlFla1JUTnpoeVZHeHVhSFZ4V0U1YWFrWkVNak5GZUZWNmNYVjFTSEJJU0VReWRYTklTbmhqVjA4MWIxSTVDbVJXZFRFclRWWXhWbU5pWjFseE1sUnFUWFJOU0V0b2R6SjVVRkpEYzJoS1drTlNWSFp5TVhBek9Ya3lXRkYwTW1WQ1VYVmFORWhPZWxWblpGZzRjbk1LYm1NMFBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly84MTUwRTY0RDdDNDMzRTFBNEQwQTdGNEJENDgzNTcyQS55bDQuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDMuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1zdGctZWtzLTAyLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wNWRiY2RjMTRlN2Q0MzQ3MyxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1zdGctZWtzLTAyLWNsdXN0ZXItd29ya2Vybm9kZXMtMWIsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-0e5839a2f86592dad", "sg-0fc2158c28c2e85c0"]
}

resource "aws_instance" "tfer--i-061f2e4218770c33d_hk-algo-d-app-mds-01" {
  ami                         = "ami-08640d2dd77438448"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count          = "1"
  cpu_threads_per_core    = "2"
  disable_api_stop        = "true"
  disable_api_termination = "true"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/sdb"
    encrypted             = "false"
    iops                  = "0"
    snapshot_id           = "snap-06fd3c6bd4c8e95a5"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    throughput  = "0"
    volume_size = "100"
    volume_type = "standard"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "c5.large"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "resource-name"
  }

  private_ip = "172.18.4.220"

  root_block_device {
    delete_on_termination = "false"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    volume_size = "40"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0339b072df6a1f486"

  tags = {
    Name                    = "hk-algo-d-app-mds-01"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tags_all = {
    Name                    = "hk-algo-d-app-mds-01"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-00edf259e1bbcb705"]
}

resource "aws_instance" "tfer--i-06909930e909521be_hk-walljump" {
  ami                         = "ami-093beec6f78f4fa56"
  associate_public_ip_address = "true"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.nano"
  ipv6_address_count                   = "0"
  key_name                             = "haoxin.chen"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.15.14"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "8"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-080023701a8f39f8e"

  tags = {
    Name                    = "hk-walljump"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tags_all = {
    Name                    = "hk-walljump"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-013f6c88d686f37d2"]
}

resource "aws_instance" "tfer--i-06ae07a2f56e78a28_simon-liu-testing-ec2-1" {
  ami                         = "ami-0bf6e149a5267c1af"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = "0"
  key_name                             = "simon.liu-self-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.4.51"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "80"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0339b072df6a1f486"

  tags = {
    Name                    = "simon-liu-testing-ec2-1"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tags_all = {
    Name                    = "simon-liu-testing-ec2-1"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-001f79b884aec8f12"]
}

resource "aws_instance" "tfer--i-07c8a0ba26770307c_hk-algo-preprd-app-qekl-01" {
  ami                         = "ami-0da906d64517f4f65"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count          = "2"
  cpu_threads_per_core    = "2"
  disable_api_stop        = "true"
  disable_api_termination = "true"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/sdb"
    encrypted             = "false"
    iops                  = "0"
    snapshot_id           = "snap-036554e4ff774e3d4"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    throughput  = "0"
    volume_size = "500"
    volume_type = "standard"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "r5n.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "resource-name"
  }

  private_ip = "172.18.4.73"

  root_block_device {
    delete_on_termination = "false"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
      team                    = "algo"
    }

    volume_size = "40"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0339b072df6a1f486"

  tags = {
    Name                    = "hk-algo-preprd-app-qekl-01"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tags_all = {
    Name                    = "hk-algo-preprd-app-qekl-01"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
    team                    = "algo"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-00edf259e1bbcb705"]
}

resource "aws_instance" "tfer--i-07f81d51ab32290a4_" {
  ami                         = "ami-05dbcdc14e7d43473"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdba"
    encrypted             = "false"
    iops                  = "150"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-5dc54c8a-4ca7-44fc-bbae-35dfc0c6ef7b"
      "kubernetes.io/cluster/hk-algo-stg-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-5dc54c8a-4ca7-44fc-bbae-35dfc0c6ef7b"
      "kubernetes.io/created-for/pvc/name"            = "wal-volume-datamaster-timescaledb-0"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
      map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
      map-migrated-project-id                         = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "50"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbr"
    encrypted             = "false"
    iops                  = "900"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-e8803804-ee30-4193-a09a-f7b63a8e9bae"
      "kubernetes.io/cluster/hk-algo-stg-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-e8803804-ee30-4193-a09a-f7b63a8e9bae"
      "kubernetes.io/created-for/pvc/name"            = "storage-volume-datamaster-timescaledb-0"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
      map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
      map-migrated-project-id                         = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "300"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcg"
    encrypted             = "false"
    iops                  = "1500"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-d50e35ba-80d8-494c-8e36-d58edce51911"
      "kubernetes.io/cluster/hk-algo-stg-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-d50e35ba-80d8-494c-8e36-d58edce51911"
      "kubernetes.io/created-for/pvc/name"            = "xmlspace-datamaster-timescaledb-0"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
      map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
      map-migrated-project-id                         = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "500"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-4ac0edcf-def8-53a3-aeb6-6a470e84926d"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-0fccab5d9a208e49a"
    name    = "eks-4ac0edcf-def8-53a3-aeb6-6a470e84926d"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.9.100"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.9.113", "172.18.9.131", "172.18.9.134", "172.18.9.142", "172.18.9.156", "172.18.9.159", "172.18.9.18", "172.18.9.197", "172.18.9.204", "172.18.9.222", "172.18.9.233", "172.18.9.244", "172.18.9.37", "172.18.9.78"]
  source_dest_check     = "true"
  subnet_id             = "subnet-003dab95b1493d5fa"

  tags = {
    "eks:cluster-name"                                  = "hk-algo-stg-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-stg-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-cluster"     = "owned"
    map-migrated-cnmap                                  = "d-server-0067yxz39nth5o"
    map-migrated-project-id                             = "GCR-Migration-2021-398"
  }

  tags_all = {
    "eks:cluster-name"                                  = "hk-algo-stg-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-stg-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-cluster"     = "owned"
    map-migrated-cnmap                                  = "d-server-0067yxz39nth5o"
    map-migrated-project-id                             = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVZM2RQUkVGNVRXcEJkMDFHYjFoRVZFMTVUVVJqZDA1VVFYbE5ha0YzVFVadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUR2s0Q2psMGRWRm5aRGhZVkRsTVFuUXZVREI2ZW1ac0wyOHdTazV3VDI5UGNFVjBXblJUWlVaWmJESk5hRFpUY25KME5tTnNaMnBxZUhGS05EZ3lNVUpVY1hJS00xVXpZWGhoZFZreFNTOUNNbE0zT0ROclJUbHhPRGRzWldkbmMzZG1OMnQzZW5oRWJYSkdVemswZWxCYU56QnpVVEJ4U25oalZIaFllSGRpY1hwV1pRcGxibWQwZUhCUU9TOVVhSHBKU201T2RXSjNkazh5UW04NVRWSmpZWGMzZEVrMGIyc3JRMDFPUmxoaVFWb3lXVWt2VVZwbmRXZFdjSFZIVVhoR09ITlBDbmhpY2xvNVJYRllOSGgxWlVSUVJFazVOQ3RRUmxkeVNIWmtiMDVhVVRWalkyWlpORU5uY0RnelQzcEpSMUJPYjI5Q2VsUlpLM1poYjFnd05tUlNhbFFLZEU5b05tdEZkR3RCUVdoclJFaDFlUzlIY2tKdFdXMTZRekY1V0RsTllUWXJSRUZwUjNWMFpsVlhlazAzYUdsQk9WQnhXRzFqU3k5VFVsQmlhM2hUYUFvck5rbFRRMDlUWVZrM2JucG1NSEp1Wms1elEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaTFNFd3dkMGxtZFdOb1VWaENURVozTXpkc1RTOHZkSFZRZVhKTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSaXN6SzBWTFFsQk9PRXB0ZGlzNFJrRktZUXAzTDIxRVlrVlNXRGRwZG1NelZHVlVTVzAyUmt4MlNUYzVkR2hzYW5aNmIxWTJPV3R6VURsRmVXSkdVblJaUjBKSE1VTlBUMXBGVXpSeFFVUkVTemRrQ20xc1pETjNUWFZCYlVWNGFXUk1NSFpYYkdwcldqQnlabUl3VkUweFVWTnJlRlJqWjA4d1FVdGhUR2hJUnpSWk5XUnVVa2d5UVRsVWRrSlBWelZRUWt3S2NHcFFTMjQzVkdORUsydFZUbUp5UlZoV1J6VkJjamhETHpOeGFGQlNNRU0xWnk4NUwwZHZha1JTUnpkVWJUbG5ia2x5WTFaR1RHSnNNRzkzTkRCRFpRcFFTMG80WVRaR1pVeHBVV2N4TUcxT1JqSldUWGhqTUVkSGRuSjFaV2cwZWxCU2RqbFZhbkJqVmpsSU9XNXVjVVE0YjIxcFZteFZSMmczUlVwbU1XOHpDbTlXVVdkMVkxbFVjREkyVmtsWFRWWlJXVEJwVkdsbFFWZ3JOR0YyU0RSdVVHRm1aMHhQU0V4cVl6SkVTemh2VW5kNFpuUlZOa2wyWlVKSU1tWkRSRkVLTkhaSlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly80RDlDNDkxNEIwM0VGRkRFQTBGQzc1OTdEOEIzMDA5OS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDIuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1zdGctZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wNWRiY2RjMTRlN2Q0MzQ3MyxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1zdGctZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWIsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-012a6b8bd9819c873", "sg-01c7ed2b9196ddf49"]
}

resource "aws_instance" "tfer--i-0838404f94017208d_" {
  ami                         = "ami-05dbcdc14e7d43473"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbi"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                               = "kubernetes-dynamic-pvc-b5aced1b-bed9-4fa2-a7bf-41f094acc265"
      "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                = "pvc-b5aced1b-bed9-4fa2-a7bf-41f094acc265"
      "kubernetes.io/created-for/pvc/name"               = "data-zookeeper-1"
      "kubernetes.io/created-for/pvc/namespace"          = "zookeeper"
      map-migrated-cnmap                                 = "d-server-0067yxz39nth5o"
      map-migrated-project-id                            = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "8"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-66c10aa4-ad17-936a-6511-63905093b366"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-092fdf2ca81482c49"
    name    = "eks-66c10aa4-ad17-936a-6511-63905093b366"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.11.242"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.11.105", "172.18.11.11", "172.18.11.110", "172.18.11.118", "172.18.11.135", "172.18.11.141", "172.18.11.146", "172.18.11.189", "172.18.11.232", "172.18.11.249", "172.18.11.254", "172.18.11.32", "172.18.11.51", "172.18.11.79"]
  source_dest_check     = "true"
  subnet_id             = "subnet-02b223e2785f190c1"

  tags = {
    "eks:cluster-name"                                     = "hk-algo-stg-eks-02-cluster"
    "eks:nodegroup-name"                                   = "hk-algo-stg-eks-02-cluster-workernodes-1a"
    "k8s.io/cluster-autoscaler/enabled"                    = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-02-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster"     = "owned"
  }

  tags_all = {
    "eks:cluster-name"                                     = "hk-algo-stg-eks-02-cluster"
    "eks:nodegroup-name"                                   = "hk-algo-stg-eks-02-cluster-workernodes-1a"
    "k8s.io/cluster-autoscaler/enabled"                    = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-02-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-02-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVZM2hQVkVFelRVUk5NRTFzYjFoRVZFMTVUVVJqZUU1cVFUTk5SRTB3VFd4dmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJTMUYzQ2tjNGRUUm5jbGMyVFVneE1tZGxaRmh1ZEcxakszUXZXV1ZNTDNvMmVtbHlLMko0Vm1sckx6UTJRaXMzVTAwMlNVMVdPRlYwWkdaa1RVa3JLMDl4U1RNS2RsVkdRMlpTZEZSU2VsSmxZbVpIVDI1eE4zRnhha2RSVFdrNEsyaDRRVE5sYVRKaFExbG9WbnBIYWtsV1FWUmthbWhWZWtsSE1tMUxkelpKU1ZOVmF3cDFiWEZDYTBOUE5GUXZRalZEWjFKTmJHVkthRlJXYXpBelZHMU5RVElyZEhBdlJFd3lWR05GYml0VmFuRjJjM0IxYzNsMlVUTjRSRUlyWVVOeFMycEJDbTB2ZDNZeVYzbENlRWRGUW1KMmFqbGpWV1p3VkhWbVNtZGpiRzkzYTNkMmNFaEJXRlJZUms4NUsyZHZWa0pxUkZWemFuSXhOV1ZYY3paamIwZDNZbTRLUjNaTmMxZERXamRQYlZsYWVWZDNZbFpSZVUwNWRYZGtPSHBLVDNOa1pXSTVabGxWZFVSTUwwcHBibFF4T1U5NmNXMDFhbUp4VGpacVdFeHhVRU15YndwRmRscEZTM1p3TkN0S1J6aGtSSEZqV0RGalEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaTVZrcFRNVFJTZG01TGJteEZWVm8xUlRseGVHcE9aMEZ6Wm1aTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJRV2haVTJkb1ZuQmFLMWgxWmxwUVJrWmhad3ByVEhWcWNUaG1NMWRhT0VGSFdGVkdla05ZVUhReGJtbENZVkpKYVdOdEswcGpUbXBGTTBoRloxWjZZMDA0ZWxwMVVscE9ablJOY3pSa2VEY3pNMWt3Q2xNM2FFZElZbFpMUlRRNWJUWkVObGx5YVd3NE0zZG1VRGt5VEcxMWQwWllRMFpYVUhKQ2JHdG1NVkE1ZW5JemVWUmpURW96VUVOM2VURllVVTFZV1d3S1J5OHZjbXh4WmsxelZrRkpZbFUzYVZST1pYbGpka05ZY1hnME1ESjRMMFEzWkhGQk9YYzJiVXMwTjJOdU5sSnFhVWRyU0VWcVJFOVVaRXg1TTFONllnbzFVemc1ZW5WVlowTkhNa3hrTmtOVk0zWlFla1JUTnpoeVZHeHVhSFZ4V0U1YWFrWkVNak5GZUZWNmNYVjFTSEJJU0VReWRYTklTbmhqVjA4MWIxSTVDbVJXZFRFclRWWXhWbU5pWjFseE1sUnFUWFJOU0V0b2R6SjVVRkpEYzJoS1drTlNWSFp5TVhBek9Ya3lXRkYwTW1WQ1VYVmFORWhPZWxWblpGZzRjbk1LYm1NMFBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly84MTUwRTY0RDdDNDMzRTFBNEQwQTdGNEJENDgzNTcyQS55bDQuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDMuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1zdGctZWtzLTAyLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wNWRiY2RjMTRlN2Q0MzQ3MyxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1zdGctZWtzLTAyLWNsdXN0ZXItd29ya2Vybm9kZXMtMWEsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-0704cc9bcca42fb74", "sg-0e5839a2f86592dad"]
}

resource "aws_instance" "tfer--i-08c86b8fd5e9fc81c_sh-d-app-bi-3" {
  ami                         = "ami-0b6aa1c2aa031b0b1"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "haoxin.chen"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.2.216"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "160"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.2.21"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0a35bdac0d3d5b133"

  tags = {
    Name                    = "sh-d-app-bi-3"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tags_all = {
    Name                    = "sh-d-app-bi-3"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0435abaa3e8842a4b"]
}

resource "aws_instance" "tfer--i-08d1f60331643590f_sh-d-app-bi-2" {
  ami                         = "ami-0fd63f24181ef8481"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "haoxin.chen"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.2.141"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "80"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.2.45"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0a35bdac0d3d5b133"

  tags = {
    Name                    = "sh-d-app-bi-2"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tags_all = {
    Name                    = "sh-d-app-bi-2"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0435abaa3e8842a4b"]
}

resource "aws_instance" "tfer--i-090e32dd94a7fc8b1_" {
  ami                         = "ami-0c50341172453e27d"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbr"
    encrypted             = "false"
    iops                  = "900"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-cd567816-10cb-4bdc-b1ef-23005df1eb49"
      "kubernetes.io/cluster/hk-algo-prd-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-cd567816-10cb-4bdc-b1ef-23005df1eb49"
      "kubernetes.io/created-for/pvc/name"            = "storage-volume-datamaster-timescaledb-0"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
    }

    throughput  = "0"
    volume_size = "300"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbv"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-b149bf91-84a6-41d7-af9b-15587df658e7"
      "kubernetes.io/cluster/hk-algo-prd-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-b149bf91-84a6-41d7-af9b-15587df658e7"
      "kubernetes.io/created-for/pvc/name"            = "prometheus-k8s-db-prometheus-k8s-0"
      "kubernetes.io/created-for/pvc/namespace"       = "monitoring"
    }

    throughput  = "0"
    volume_size = "20"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbw"
    encrypted             = "false"
    iops                  = "150"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-88e5f6e2-f9b2-4d43-8cca-723650a9a7b0"
      "kubernetes.io/cluster/hk-algo-prd-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-88e5f6e2-f9b2-4d43-8cca-723650a9a7b0"
      "kubernetes.io/created-for/pvc/name"            = "wal-volume-datamaster-timescaledb-0"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
    }

    throughput  = "0"
    volume_size = "50"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcz"
    encrypted             = "false"
    iops                  = "1500"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-3df8cb81-e34b-4f38-bb54-802a1747d82a"
      "kubernetes.io/cluster/hk-algo-prd-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-3df8cb81-e34b-4f38-bb54-802a1747d82a"
      "kubernetes.io/created-for/pvc/name"            = "xmlspace-datamaster-timescaledb-0"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
    }

    throughput  = "0"
    volume_size = "500"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-ecc12c60-1a77-1d74-e2b1-58c54da41d93"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-0ca0d4055baa8ec59"
    name    = "eks-ecc12c60-1a77-1d74-e2b1-58c54da41d93"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.10.125"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "20"
    volume_type           = "gp2"
  }

  secondary_private_ips = ["172.18.10.116", "172.18.10.132", "172.18.10.141", "172.18.10.147", "172.18.10.155", "172.18.10.163", "172.18.10.175", "172.18.10.219", "172.18.10.242", "172.18.10.33", "172.18.10.36", "172.18.10.47", "172.18.10.64", "172.18.10.99"]
  source_dest_check     = "true"
  subnet_id             = "subnet-063c43dc372b616d0"

  tags = {
    "eks:cluster-name"                                  = "hk-algo-prd-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-prd-eks-cluster-workernodes-1a"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-prd-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-prd-eks-cluster"     = "owned"
  }

  tags_all = {
    "eks:cluster-name"                                  = "hk-algo-prd-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-prd-eks-cluster-workernodes-1a"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-prd-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-prd-eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVaM2ROVkVFMFRsUnJNRTVHYjFoRVZFMTVUVVJqZVU5VVFUUk9WR3N3VGtadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUVmhTQ25ORmFXaFRkVnAxU2xKeE5Ya3JUREp6YkdOS2FHVmpNV1EzVDA1VVlqSk1WV2htV1hSR2VsbEVPRUpoYVVsaWNFWkliVFIzZFV3eVJubElkaXRrUVdRS1dXUnlXVmRVVFU4d2VFcENkQ3N3VUdOeFdHaENZbEJXT1RoRFVrcG1iME5PZG1obGNsTXlORWhRUVhWMFpHNUNWRVJ2YzBSM1pGazJZVE52YkV4cE5ncHRhVXRtWldGNU1GZG1kM3AyZFhadU5VcENaMlE0V25aVE1sVTJhRnByZUhkUmQyVkVUQ3N2WWk4MlEyTTVSbVJUYzBONWJ6VmFhalpQU2tNeVdsaHFDamR1Y25CNFFYWjBORXR2Wm14eVFUUkRMM1Y2UjJSSVFtUkhiVUUxVTFKdVpVbGxWWFJxYW1GWFlXWnhla2RLWkUwd1NuQnlOMkoyVEhkUE9IQlFZek1LWWxGVFFrYzJZelJyTTIxVmVXOXBWVTVpYmxCT2VEUk1WV1EyTDFKV04yWmhkek5zVVdoNVVUWkZWRWRhUjBSNmJHSTJVMmM0V1U1RE5rb3daM2h4VlFwM1ZFcFRiblJLT0dkVVprcExaWFJtVEhBd1EwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaT2R6QnJZVVpPVlVKRVZYWjZRVVJwYlRoRVIzRkpaRzV3UkZOTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJUVXBDYVVONVNWRjBVMmRaZEdKM1JtaHNNZ3BGYVVwaUwzcHljR0p1TkV0bk4zaDNla3BwWVc1UGEyUTJjMEZZWXpZdmVGZEVXbmwwUm1WUFRFbENiMFpxSzBGeGRrRm1UR28xZEVac1RVVm1kakZNQ21wSldrZEVNR0U1VHpKd1JuTlVTVzUxWVVWQ1lrMVdVQzlhUjBadFJpOVliWGRNYkRKYU4yRXJLM2hKV0ZkR1ZsZFJaakJvZEZrdmVGWktPRmwzVFVNS1FuSjVTMFJ1ZUZKWVNHRmpNMVozVkhCSFlqSjJiR0k0WTBVMFdrZE9USFZGVTJ0R2FqaDNSelJ1U3pGck0yeE1Xa2h3VGxwd1lpOVBjbkY0Unk5YWRBcDZOVkpxVGtOUlRXYzJVMDVXVldGdVVGZFVhRzluUm10YWJ5OWFVRmgxUkhKV2JFczVZV3hhTlVWTWVFdHBkRk5VTm1zNU1uRlJTMk13Ym1vcmNWaFFDbHB5UWxBMldFaENibEJoWkZFM04ycGliRU13WTJ4dGJHdHRaamx0TVROQ1dVRklNakZ6ZERsekwzRldaWEJwTUZKcU5rWlFNalpEU21WWE5ESjFXVlFLY0VSRlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly8wNEM2QzlDNEE0MzZDODgwRTYwM0NCQkEzOThCM0E0NS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDQuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1wcmQtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wYzUwMzQxMTcyNDUzZTI3ZCxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1wcmQtZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWEsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-0055c7f4669030349", "sg-00cd50dbf531ca4ca"]
}

resource "aws_instance" "tfer--i-094095c3da1b9fecd_sh-d-app-bi-1" {
  ami                         = "ami-0892cf88877953d0c"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "haoxin.chen"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.2.98"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "80"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.2.99"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0a35bdac0d3d5b133"

  tags = {
    Name                    = "sh-d-app-bi-1"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tags_all = {
    Name                    = "sh-d-app-bi-1"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0435abaa3e8842a4b"]
}

resource "aws_instance" "tfer--i-094a3250f297b7980_" {
  ami                         = "ami-05dbcdc14e7d43473"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbg"
    encrypted             = "false"
    iops                  = "900"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-8182cb98-73ea-494e-b8a4-cfec2b978cc7"
      "kubernetes.io/cluster/hk-algo-stg-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-8182cb98-73ea-494e-b8a4-cfec2b978cc7"
      "kubernetes.io/created-for/pvc/name"            = "storage-volume-datamaster-timescaledb-1"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
      map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
      map-migrated-project-id                         = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "300"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbl"
    encrypted             = "false"
    iops                  = "150"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-c002bd5d-fe11-41fb-8460-bec957f00c89"
      "kubernetes.io/cluster/hk-algo-stg-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-c002bd5d-fe11-41fb-8460-bec957f00c89"
      "kubernetes.io/created-for/pvc/name"            = "wal-volume-datamaster-timescaledb-1"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
      map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
      map-migrated-project-id                         = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "50"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbp"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-ad0ef58f-323e-46e2-8f1d-5782e46affb5"
      "kubernetes.io/cluster/hk-algo-stg-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-ad0ef58f-323e-46e2-8f1d-5782e46affb5"
      "kubernetes.io/created-for/pvc/name"            = "prometheus-k8s-db-prometheus-k8s-0"
      "kubernetes.io/created-for/pvc/namespace"       = "monitoring"
      map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
      map-migrated-project-id                         = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "20"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcp"
    encrypted             = "false"
    iops                  = "1500"

    tags = {
      Name                                            = "kubernetes-dynamic-pvc-944ced8d-a34e-4ac7-92be-a1522a2c1811"
      "kubernetes.io/cluster/hk-algo-stg-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"             = "pvc-944ced8d-a34e-4ac7-92be-a1522a2c1811"
      "kubernetes.io/created-for/pvc/name"            = "xmlspace-datamaster-timescaledb-1"
      "kubernetes.io/created-for/pvc/namespace"       = "timescaledb"
      map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
      map-migrated-project-id                         = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "500"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-fec0edcf-dee7-4b78-1d0f-2c5a7c6f2254"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-02374bd1baf816254"
    name    = "eks-fec0edcf-dee7-4b78-1d0f-2c5a7c6f2254"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.11.55"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.11.101", "172.18.11.150", "172.18.11.162", "172.18.11.168", "172.18.11.184", "172.18.11.19", "172.18.11.194", "172.18.11.199", "172.18.11.228", "172.18.11.247", "172.18.11.33", "172.18.11.36", "172.18.11.47", "172.18.11.7"]
  source_dest_check     = "true"
  subnet_id             = "subnet-02b223e2785f190c1"

  tags = {
    "eks:cluster-name"                                  = "hk-algo-stg-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-stg-eks-cluster-workernodes-1a"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-cluster"     = "owned"
    map-migrated-cnmap                                  = "d-server-0067yxz39nth5o"
    map-migrated-project-id                             = "GCR-Migration-2021-398"
  }

  tags_all = {
    "eks:cluster-name"                                  = "hk-algo-stg-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-stg-eks-cluster-workernodes-1a"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-stg-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-stg-eks-cluster"     = "owned"
    map-migrated-cnmap                                  = "d-server-0067yxz39nth5o"
    map-migrated-project-id                             = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVZM2RQUkVGNVRXcEJkMDFHYjFoRVZFMTVUVVJqZDA1VVFYbE5ha0YzVFVadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUR2s0Q2psMGRWRm5aRGhZVkRsTVFuUXZVREI2ZW1ac0wyOHdTazV3VDI5UGNFVjBXblJUWlVaWmJESk5hRFpUY25KME5tTnNaMnBxZUhGS05EZ3lNVUpVY1hJS00xVXpZWGhoZFZreFNTOUNNbE0zT0ROclJUbHhPRGRzWldkbmMzZG1OMnQzZW5oRWJYSkdVemswZWxCYU56QnpVVEJ4U25oalZIaFllSGRpY1hwV1pRcGxibWQwZUhCUU9TOVVhSHBKU201T2RXSjNkazh5UW04NVRWSmpZWGMzZEVrMGIyc3JRMDFPUmxoaVFWb3lXVWt2VVZwbmRXZFdjSFZIVVhoR09ITlBDbmhpY2xvNVJYRllOSGgxWlVSUVJFazVOQ3RRUmxkeVNIWmtiMDVhVVRWalkyWlpORU5uY0RnelQzcEpSMUJPYjI5Q2VsUlpLM1poYjFnd05tUlNhbFFLZEU5b05tdEZkR3RCUVdoclJFaDFlUzlIY2tKdFdXMTZRekY1V0RsTllUWXJSRUZwUjNWMFpsVlhlazAzYUdsQk9WQnhXRzFqU3k5VFVsQmlhM2hUYUFvck5rbFRRMDlUWVZrM2JucG1NSEp1Wms1elEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaTFNFd3dkMGxtZFdOb1VWaENURVozTXpkc1RTOHZkSFZRZVhKTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSaXN6SzBWTFFsQk9PRXB0ZGlzNFJrRktZUXAzTDIxRVlrVlNXRGRwZG1NelZHVlVTVzAyUmt4MlNUYzVkR2hzYW5aNmIxWTJPV3R6VURsRmVXSkdVblJaUjBKSE1VTlBUMXBGVXpSeFFVUkVTemRrQ20xc1pETjNUWFZCYlVWNGFXUk1NSFpYYkdwcldqQnlabUl3VkUweFVWTnJlRlJqWjA4d1FVdGhUR2hJUnpSWk5XUnVVa2d5UVRsVWRrSlBWelZRUWt3S2NHcFFTMjQzVkdORUsydFZUbUp5UlZoV1J6VkJjamhETHpOeGFGQlNNRU0xWnk4NUwwZHZha1JTUnpkVWJUbG5ia2x5WTFaR1RHSnNNRzkzTkRCRFpRcFFTMG80WVRaR1pVeHBVV2N4TUcxT1JqSldUWGhqTUVkSGRuSjFaV2cwZWxCU2RqbFZhbkJqVmpsSU9XNXVjVVE0YjIxcFZteFZSMmczUlVwbU1XOHpDbTlXVVdkMVkxbFVjREkyVmtsWFRWWlJXVEJwVkdsbFFWZ3JOR0YyU0RSdVVHRm1aMHhQU0V4cVl6SkVTemh2VW5kNFpuUlZOa2wyWlVKSU1tWkRSRkVLTkhaSlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly80RDlDNDkxNEIwM0VGRkRFQTBGQzc1OTdEOEIzMDA5OS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDIuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1zdGctZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wNWRiY2RjMTRlN2Q0MzQ3MyxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1zdGctZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWEsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-012a6b8bd9819c873", "sg-03bdebee5f9c20679"]
}

resource "aws_instance" "tfer--i-0d251b9b42082b374_hk-office-sother-vpn-ubuntu" {
  ami                         = "ami-0e443cca092971302"
  associate_public_ip_address = "true"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = "0"
  key_name                             = "haoxin.chen"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.15.13"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "30"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-080023701a8f39f8e"

  tags = {
    Name                    = "hk-office-sother-vpn-ubuntu"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tags_all = {
    Name                    = "hk-office-sother-vpn-ubuntu"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
    map-migrated-project-id = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0822d4b9fe0340365"]
}

resource "aws_instance" "tfer--i-0d5d971a63a6e602f_" {
  ami                         = "ami-0c50341172453e27d"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-36c12c60-1a54-a0a9-5442-d7dd150a9b61"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-00df56d30afb40a7b"
    name    = "eks-36c12c60-1a54-a0a9-5442-d7dd150a9b61"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.8.144"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "20"
    volume_type           = "gp2"
  }

  secondary_private_ips = ["172.18.8.107", "172.18.8.113", "172.18.8.129", "172.18.8.131", "172.18.8.141", "172.18.8.154", "172.18.8.164", "172.18.8.168", "172.18.8.211", "172.18.8.212", "172.18.8.23", "172.18.8.241", "172.18.8.45", "172.18.8.66"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0da14af7f50989dc1"

  tags = {
    "eks:cluster-name"                                  = "hk-algo-prd-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-prd-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-prd-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-prd-eks-cluster"     = "owned"
  }

  tags_all = {
    "eks:cluster-name"                                  = "hk-algo-prd-eks-cluster"
    "eks:nodegroup-name"                                = "hk-algo-prd-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"                 = "true"
    "k8s.io/cluster-autoscaler/hk-algo-prd-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-algo-prd-eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVaM2ROVkVFMFRsUnJNRTVHYjFoRVZFMTVUVVJqZVU5VVFUUk9WR3N3VGtadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUVmhTQ25ORmFXaFRkVnAxU2xKeE5Ya3JUREp6YkdOS2FHVmpNV1EzVDA1VVlqSk1WV2htV1hSR2VsbEVPRUpoYVVsaWNFWkliVFIzZFV3eVJubElkaXRrUVdRS1dXUnlXVmRVVFU4d2VFcENkQ3N3VUdOeFdHaENZbEJXT1RoRFVrcG1iME5PZG1obGNsTXlORWhRUVhWMFpHNUNWRVJ2YzBSM1pGazJZVE52YkV4cE5ncHRhVXRtWldGNU1GZG1kM3AyZFhadU5VcENaMlE0V25aVE1sVTJhRnByZUhkUmQyVkVUQ3N2WWk4MlEyTTVSbVJUYzBONWJ6VmFhalpQU2tNeVdsaHFDamR1Y25CNFFYWjBORXR2Wm14eVFUUkRMM1Y2UjJSSVFtUkhiVUUxVTFKdVpVbGxWWFJxYW1GWFlXWnhla2RLWkUwd1NuQnlOMkoyVEhkUE9IQlFZek1LWWxGVFFrYzJZelJyTTIxVmVXOXBWVTVpYmxCT2VEUk1WV1EyTDFKV04yWmhkek5zVVdoNVVUWkZWRWRhUjBSNmJHSTJVMmM0V1U1RE5rb3daM2h4VlFwM1ZFcFRiblJLT0dkVVprcExaWFJtVEhBd1EwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaT2R6QnJZVVpPVlVKRVZYWjZRVVJwYlRoRVIzRkpaRzV3UkZOTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJUVXBDYVVONVNWRjBVMmRaZEdKM1JtaHNNZ3BGYVVwaUwzcHljR0p1TkV0bk4zaDNla3BwWVc1UGEyUTJjMEZZWXpZdmVGZEVXbmwwUm1WUFRFbENiMFpxSzBGeGRrRm1UR28xZEVac1RVVm1kakZNQ21wSldrZEVNR0U1VHpKd1JuTlVTVzUxWVVWQ1lrMVdVQzlhUjBadFJpOVliWGRNYkRKYU4yRXJLM2hKV0ZkR1ZsZFJaakJvZEZrdmVGWktPRmwzVFVNS1FuSjVTMFJ1ZUZKWVNHRmpNMVozVkhCSFlqSjJiR0k0WTBVMFdrZE9USFZGVTJ0R2FqaDNSelJ1U3pGck0yeE1Xa2h3VGxwd1lpOVBjbkY0Unk5YWRBcDZOVkpxVGtOUlRXYzJVMDVXVldGdVVGZFVhRzluUm10YWJ5OWFVRmgxUkhKV2JFczVZV3hhTlVWTWVFdHBkRk5VTm1zNU1uRlJTMk13Ym1vcmNWaFFDbHB5UWxBMldFaENibEJoWkZFM04ycGliRU13WTJ4dGJHdHRaamx0TVROQ1dVRklNakZ6ZERsekwzRldaWEJwTUZKcU5rWlFNalpEU21WWE5ESjFXVlFLY0VSRlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly8wNEM2QzlDNEE0MzZDODgwRTYwM0NCQkEzOThCM0E0NS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDQuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstYWxnby1wcmQtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wYzUwMzQxMTcyNDUzZTI3ZCxtYXAtbWlncmF0ZWQtY25tYXA9ZC1zZXJ2ZXItMDA2N3l4ejM5bnRoNW8sZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9aGstYWxnby1wcmQtZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWIsbWFwLW1pZ3JhdGVkLXByb2plY3QtaWQ9R0NSLU1pZ3JhdGlvbi0yMDIxLTM5OCAtLW1heC1wb2RzPTU4JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-0055c7f4669030349", "sg-09dccf0ad55fab683"]
}

resource "aws_instance" "tfer--i-0e0233c6fb000f7c3_" {
  ami                         = "ami-0bcbff72f7d2bb056"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbc"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-1f93e57e-4c1e-4407-b2dc-2fbcffec0e50"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-1f93e57e-4c1e-4407-b2dc-2fbcffec0e50"
      "kubernetes.io/created-for/pvc/name"        = "dolphinscheduler-worker-data-dolphinscheduler-worker-0"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-dolphinscheduler"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "20"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbj"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-3459dbb4-58f5-4009-8601-57ea9419bd90"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-3459dbb4-58f5-4009-8601-57ea9419bd90"
      "kubernetes.io/created-for/pvc/name"        = "data-zookeeper-2"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-zookeeper"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "8"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbm"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-f754ca28-9be5-43b3-8ab4-68a9e2605b80"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-f754ca28-9be5-43b3-8ab4-68a9e2605b80"
      "kubernetes.io/created-for/pvc/name"        = "dolphinscheduler-worker-logs-dolphinscheduler-worker-0"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-dolphinscheduler"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "20"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbo"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-2881a921-a119-4c2a-8caa-b894e36df1db"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-2881a921-a119-4c2a-8caa-b894e36df1db"
      "kubernetes.io/created-for/pvc/name"        = "data-zookeeper-1"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-zookeeper"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "8"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbw"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-e279a0a1-24f8-428b-a73b-7708e2f2178a"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-e279a0a1-24f8-428b-a73b-7708e2f2178a"
      "kubernetes.io/created-for/pvc/name"        = "dolphinscheduler-shared"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-dolphinscheduler"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "20"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcb"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-5e9689e6-cf0b-4c99-87e4-a42af7a095bc"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-5e9689e6-cf0b-4c99-87e4-a42af7a095bc"
      "kubernetes.io/created-for/pvc/name"        = "zeppelin"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-n-comm-flink"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "1"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcc"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-d726ab7d-c3cc-4046-a0ed-d3673edd55ca"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-d726ab7d-c3cc-4046-a0ed-d3673edd55ca"
      "kubernetes.io/created-for/pvc/name"        = "data-kong-1656668787-postgresql-0"
      "kubernetes.io/created-for/pvc/namespace"   = "default"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "8"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcq"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-fcc7503f-d051-4908-9113-47a701c9617b"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-fcc7503f-d051-4908-9113-47a701c9617b"
      "kubernetes.io/created-for/pvc/name"        = "dolphinscheduler-alert"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-dolphinscheduler"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "20"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcv"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-9ff801a0-40ee-4726-ab7c-9628c4d38fed"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-9ff801a0-40ee-4726-ab7c-9628c4d38fed"
      "kubernetes.io/created-for/pvc/name"        = "dolphinscheduler-master-dolphinscheduler-master-0"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-dolphinscheduler"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "20"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdcy"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-df644cb5-4728-4b1d-8315-1a9f96e46155"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-df644cb5-4728-4b1d-8315-1a9f96e46155"
      "kubernetes.io/created-for/pvc/name"        = "dolphinscheduler-api"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-dolphinscheduler"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "20"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-acc0d75e-27a8-e060-07da-44e788a39f95"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-0b5f642b811036f85"
    name    = "eks-acc0d75e-27a8-e060-07da-44e788a39f95"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.0.12"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.0.126", "172.18.0.140", "172.18.0.142", "172.18.0.150", "172.18.0.174", "172.18.0.188", "172.18.0.21", "172.18.0.211", "172.18.0.229", "172.18.0.37", "172.18.0.38", "172.18.0.46", "172.18.0.50", "172.18.0.76"]
  source_dest_check     = "true"
  subnet_id             = "subnet-04c9b47d914fa5461"

  tags = {
    "eks:cluster-name"                              = "hk-it-d-eks-cluster"
    "eks:nodegroup-name"                            = "hk-it-d-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"             = "true"
    "k8s.io/cluster-autoscaler/hk-it-d-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-it-d-eks-cluster"     = "owned"
    map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
    map-migrated-project-id                         = "GCR-Migration-2021-398"
  }

  tags_all = {
    "eks:cluster-name"                              = "hk-it-d-eks-cluster"
    "eks:nodegroup-name"                            = "hk-it-d-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"             = "true"
    "k8s.io/cluster-autoscaler/hk-it-d-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-it-d-eks-cluster"     = "owned"
    map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
    map-migrated-project-id                         = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVXWGxQVkVFMFRYcFJlazVXYjFoRVZFMTVUVVJaZVU1cVFUUk5lbEY2VGxadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJURXRuQ2sxWlYzZ3hZekJJSzNsc2IzcFBSMDh5VVhwa1RYZE1jMjlpVjJGak1VaHRTM0ZFY0ZFNVYwWktTV2RwVTNWSVJqZHlUVzAwV0dGcFIwc3JjVXhZUmtjS1V6QXpSV1JWU3pKSk9XcHdXaXM1WTFOWU1XWlhlbE52VlVWbGJFMVRSbHBDYjNkcVVrZGljVk4xVFhJMWREQmFSbFpDTUVWRU5qZG9ObXREZVVwNUx3cExUWGRSTTJOVWRXRTJUR3hZTjBWQ1MwbGlPRnB0YkdjMFdGWTRkRE5hVm5kU1RWcGFWRWhsVFZocWFVSkRVbGRvTmpKb09VWnRZalpoUWpSMWFXdDNDbWg2ZW1SNlEwODFTVWQ2YzFkT1ZXNVNiVmwyTVU1T1IyOTBOMkl5V2xSSlVEZEhXbHBzUzFKUVNtdEVNUzl4YVRWa2FVMVZRMEpWUm5GT1JFWTJSV29LTkM5dFEyMWxiVFJZVUc1a2RUa3ZhRzl1UlhFdlN6RkxlbU12UlZCV1dIZFdWMFE1ZDAxVlRqTkJVbnBGZFdGeFoyd3ZNVE5TWTJGck56WlFOekJ4TlFvdlozSnBSRWROZEZWUVpHTnBVbkphVURCalEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaS1l6QkRiblpJYWt4Nk1rVXdkblJZYmtsWVJ6UTVaVVl5U1ROTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSVnBVVnpKd2JEWXpRVms1VlhKVFpWZE1SZ3BRWkZwa01HdEpORTVSYWxjMlJUWnpLMjh4WkhSd1Rrb3dVVGRvTmpFNFFsbGxZbFJFWVZwaE4ySlZlVmxTWldOR1lVWkRkRFJTTnpOblZYWjFWRVpIQ21kR1ltUkRZbVpCZUZkNWRsbGhTUzk0V0RONFlrSnZiRWRZZGxsckwyOVBjVFp1U21NdmJuUnVORkk0V21Fd1JXcEVaa2g2UlVWVVVFTmxkMEZGYVhJS1kxSnlPR2tyZVdsM09IRnBhMkppV0hkR1VsUXlWVkJCV0VOS1VHd3JSa2gzVjB0eGJGVTVlV3Q0VjAxVVduTXdjRmxUUzFkNWVYVlRURzVzY1dNMU9BcGFjM0pqUVhWSFJtNWxTWEZ4UTNjMVZHTTVLek5LTldocGREZFJORk5oTDNnNU0yZDFiblpHTUhWbE1XeFhZalpvTnpaUGNXZExiRWh6YVdWcFJub3ZDbTkwWTBJNVMzSklhMUp2ZWtWNlQzWkhiMmhpUkZBeWJuSm1jUzlvTVc5VlFXOUNNRUpNZFhkRk5XazVMekoyZVhjMFVVcHljMmhCWjAxc1dXZGFORWdLU1RFNFBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly82MTdCRDUxRjM5MDA3MDA2OEY3NDI2RjU0ODYyMjU5NS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDEuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstaXQtZC1la3MtY2x1c3RlciAtLWt1YmVsZXQtZXh0cmEtYXJncyAnLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXAtaW1hZ2U9YW1pLTBiY2JmZjcyZjdkMmJiMDU2LGVrcy5hbWF6b25hd3MuY29tL2NhcGFjaXR5VHlwZT1PTl9ERU1BTkQsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPWhrLWl0LWQtZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWIgLS1tYXgtcG9kcz01OCcgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
  vpc_security_group_ids = ["sg-02156953d48ad4c4d", "sg-0a5c0e344945d7a12"]
}

resource "aws_instance" "tfer--i-0ea68052803eeb64f_" {
  ami                         = "ami-0bcbff72f7d2bb056"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-acc0d75e-27a8-e060-07da-44e788a39f95"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-0b5f642b811036f85"
    name    = "eks-acc0d75e-27a8-e060-07da-44e788a39f95"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.0.245"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.0.119", "172.18.0.124", "172.18.0.137", "172.18.0.186", "172.18.0.202", "172.18.0.206", "172.18.0.222", "172.18.0.241", "172.18.0.249", "172.18.0.25", "172.18.0.34", "172.18.0.58", "172.18.0.75", "172.18.0.78"]
  source_dest_check     = "true"
  subnet_id             = "subnet-04c9b47d914fa5461"

  tags = {
    "eks:cluster-name"                              = "hk-it-d-eks-cluster"
    "eks:nodegroup-name"                            = "hk-it-d-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"             = "true"
    "k8s.io/cluster-autoscaler/hk-it-d-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-it-d-eks-cluster"     = "owned"
    map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
    map-migrated-project-id                         = "GCR-Migration-2021-398"
  }

  tags_all = {
    "eks:cluster-name"                              = "hk-it-d-eks-cluster"
    "eks:nodegroup-name"                            = "hk-it-d-eks-cluster-workernodes-1b"
    "k8s.io/cluster-autoscaler/enabled"             = "true"
    "k8s.io/cluster-autoscaler/hk-it-d-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-it-d-eks-cluster"     = "owned"
    map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
    map-migrated-project-id                         = "GCR-Migration-2021-398"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVXWGxQVkVFMFRYcFJlazVXYjFoRVZFMTVUVVJaZVU1cVFUUk5lbEY2VGxadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJURXRuQ2sxWlYzZ3hZekJJSzNsc2IzcFBSMDh5VVhwa1RYZE1jMjlpVjJGak1VaHRTM0ZFY0ZFNVYwWktTV2RwVTNWSVJqZHlUVzAwV0dGcFIwc3JjVXhZUmtjS1V6QXpSV1JWU3pKSk9XcHdXaXM1WTFOWU1XWlhlbE52VlVWbGJFMVRSbHBDYjNkcVVrZGljVk4xVFhJMWREQmFSbFpDTUVWRU5qZG9ObXREZVVwNUx3cExUWGRSTTJOVWRXRTJUR3hZTjBWQ1MwbGlPRnB0YkdjMFdGWTRkRE5hVm5kU1RWcGFWRWhsVFZocWFVSkRVbGRvTmpKb09VWnRZalpoUWpSMWFXdDNDbWg2ZW1SNlEwODFTVWQ2YzFkT1ZXNVNiVmwyTVU1T1IyOTBOMkl5V2xSSlVEZEhXbHBzUzFKUVNtdEVNUzl4YVRWa2FVMVZRMEpWUm5GT1JFWTJSV29LTkM5dFEyMWxiVFJZVUc1a2RUa3ZhRzl1UlhFdlN6RkxlbU12UlZCV1dIZFdWMFE1ZDAxVlRqTkJVbnBGZFdGeFoyd3ZNVE5TWTJGck56WlFOekJ4TlFvdlozSnBSRWROZEZWUVpHTnBVbkphVURCalEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaS1l6QkRiblpJYWt4Nk1rVXdkblJZYmtsWVJ6UTVaVVl5U1ROTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSVnBVVnpKd2JEWXpRVms1VlhKVFpWZE1SZ3BRWkZwa01HdEpORTVSYWxjMlJUWnpLMjh4WkhSd1Rrb3dVVGRvTmpFNFFsbGxZbFJFWVZwaE4ySlZlVmxTWldOR1lVWkRkRFJTTnpOblZYWjFWRVpIQ21kR1ltUkRZbVpCZUZkNWRsbGhTUzk0V0RONFlrSnZiRWRZZGxsckwyOVBjVFp1U21NdmJuUnVORkk0V21Fd1JXcEVaa2g2UlVWVVVFTmxkMEZGYVhJS1kxSnlPR2tyZVdsM09IRnBhMkppV0hkR1VsUXlWVkJCV0VOS1VHd3JSa2gzVjB0eGJGVTVlV3Q0VjAxVVduTXdjRmxUUzFkNWVYVlRURzVzY1dNMU9BcGFjM0pqUVhWSFJtNWxTWEZ4UTNjMVZHTTVLek5LTldocGREZFJORk5oTDNnNU0yZDFiblpHTUhWbE1XeFhZalpvTnpaUGNXZExiRWh6YVdWcFJub3ZDbTkwWTBJNVMzSklhMUp2ZWtWNlQzWkhiMmhpUkZBeWJuSm1jUzlvTVc5VlFXOUNNRUpNZFhkRk5XazVMekoyZVhjMFVVcHljMmhCWjAxc1dXZGFORWdLU1RFNFBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly82MTdCRDUxRjM5MDA3MDA2OEY3NDI2RjU0ODYyMjU5NS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDEuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstaXQtZC1la3MtY2x1c3RlciAtLWt1YmVsZXQtZXh0cmEtYXJncyAnLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXAtaW1hZ2U9YW1pLTBiY2JmZjcyZjdkMmJiMDU2LGVrcy5hbWF6b25hd3MuY29tL2NhcGFjaXR5VHlwZT1PTl9ERU1BTkQsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPWhrLWl0LWQtZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWIgLS1tYXgtcG9kcz01OCcgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
  vpc_security_group_ids = ["sg-02156953d48ad4c4d", "sg-0a5c0e344945d7a12"]
}

resource "aws_instance" "tfer--i-0f13554a78bd0665e_" {
  ami                         = "ami-0bcbff72f7d2bb056"
  associate_public_ip_address = "false"
  availability_zone           = "ap-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdbk"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name                                        = "kubernetes-dynamic-pvc-ffcfaf17-800c-4b7a-a436-9e386fdab4e6"
      "kubernetes.io/cluster/hk-it-d-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"         = "pvc-ffcfaf17-800c-4b7a-a436-9e386fdab4e6"
      "kubernetes.io/created-for/pvc/name"        = "data-zookeeper-0"
      "kubernetes.io/created-for/pvc/namespace"   = "nsp-d-comm-zookeeper"
      map-migrated-cnmap                          = "d-server-0067yxz39nth5o"
      map-migrated-project-id                     = "GCR-Migration-2021-398"
    }

    throughput  = "0"
    volume_size = "8"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-7ac0d75e-27a5-d1d1-e175-84a6263abb90"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "alicloud-algo-jump_aqumon-user"

  launch_template {
    id      = "lt-0dc57a97925e5e261"
    name    = "eks-7ac0d75e-27a5-d1d1-e175-84a6263abb90"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.18.1.250"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      map-migrated-cnmap      = "d-server-0067yxz39nth5o"
      map-migrated-project-id = "GCR-Migration-2021-398"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["172.18.1.115", "172.18.1.121", "172.18.1.132", "172.18.1.145", "172.18.1.149", "172.18.1.194", "172.18.1.231", "172.18.1.26", "172.18.1.32", "172.18.1.37", "172.18.1.57", "172.18.1.60", "172.18.1.63", "172.18.1.69"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0b19dac5d6c6360cc"

  tags = {
    "eks:cluster-name"                              = "hk-it-d-eks-cluster"
    "eks:nodegroup-name"                            = "hk-it-d-eks-cluster-workernodes-1a"
    "k8s.io/cluster-autoscaler/enabled"             = "true"
    "k8s.io/cluster-autoscaler/hk-it-d-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-it-d-eks-cluster"     = "owned"
    map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
    map-migrated-project-id                         = "\tGCR-Migration-2021-398"
  }

  tags_all = {
    "eks:cluster-name"                              = "hk-it-d-eks-cluster"
    "eks:nodegroup-name"                            = "hk-it-d-eks-cluster-workernodes-1a"
    "k8s.io/cluster-autoscaler/enabled"             = "true"
    "k8s.io/cluster-autoscaler/hk-it-d-eks-cluster" = "owned"
    "kubernetes.io/cluster/hk-it-d-eks-cluster"     = "owned"
    map-migrated-cnmap                              = "d-server-0067yxz39nth5o"
    map-migrated-project-id                         = "\tGCR-Migration-2021-398"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVXWGxQVkVFMFRYcFJlazVXYjFoRVZFMTVUVVJaZVU1cVFUUk5lbEY2VGxadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJURXRuQ2sxWlYzZ3hZekJJSzNsc2IzcFBSMDh5VVhwa1RYZE1jMjlpVjJGak1VaHRTM0ZFY0ZFNVYwWktTV2RwVTNWSVJqZHlUVzAwV0dGcFIwc3JjVXhZUmtjS1V6QXpSV1JWU3pKSk9XcHdXaXM1WTFOWU1XWlhlbE52VlVWbGJFMVRSbHBDYjNkcVVrZGljVk4xVFhJMWREQmFSbFpDTUVWRU5qZG9ObXREZVVwNUx3cExUWGRSTTJOVWRXRTJUR3hZTjBWQ1MwbGlPRnB0YkdjMFdGWTRkRE5hVm5kU1RWcGFWRWhsVFZocWFVSkRVbGRvTmpKb09VWnRZalpoUWpSMWFXdDNDbWg2ZW1SNlEwODFTVWQ2YzFkT1ZXNVNiVmwyTVU1T1IyOTBOMkl5V2xSSlVEZEhXbHBzUzFKUVNtdEVNUzl4YVRWa2FVMVZRMEpWUm5GT1JFWTJSV29LTkM5dFEyMWxiVFJZVUc1a2RUa3ZhRzl1UlhFdlN6RkxlbU12UlZCV1dIZFdWMFE1ZDAxVlRqTkJVbnBGZFdGeFoyd3ZNVE5TWTJGck56WlFOekJ4TlFvdlozSnBSRWROZEZWUVpHTnBVbkphVURCalEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaS1l6QkRiblpJYWt4Nk1rVXdkblJZYmtsWVJ6UTVaVVl5U1ROTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSVnBVVnpKd2JEWXpRVms1VlhKVFpWZE1SZ3BRWkZwa01HdEpORTVSYWxjMlJUWnpLMjh4WkhSd1Rrb3dVVGRvTmpFNFFsbGxZbFJFWVZwaE4ySlZlVmxTWldOR1lVWkRkRFJTTnpOblZYWjFWRVpIQ21kR1ltUkRZbVpCZUZkNWRsbGhTUzk0V0RONFlrSnZiRWRZZGxsckwyOVBjVFp1U21NdmJuUnVORkk0V21Fd1JXcEVaa2g2UlVWVVVFTmxkMEZGYVhJS1kxSnlPR2tyZVdsM09IRnBhMkppV0hkR1VsUXlWVkJCV0VOS1VHd3JSa2gzVjB0eGJGVTVlV3Q0VjAxVVduTXdjRmxUUzFkNWVYVlRURzVzY1dNMU9BcGFjM0pqUVhWSFJtNWxTWEZ4UTNjMVZHTTVLek5LTldocGREZFJORk5oTDNnNU0yZDFiblpHTUhWbE1XeFhZalpvTnpaUGNXZExiRWh6YVdWcFJub3ZDbTkwWTBJNVMzSklhMUp2ZWtWNlQzWkhiMmhpUkZBeWJuSm1jUzlvTVc5VlFXOUNNRUpNZFhkRk5XazVMekoyZVhjMFVVcHljMmhCWjAxc1dXZGFORWdLU1RFNFBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly82MTdCRDUxRjM5MDA3MDA2OEY3NDI2RjU0ODYyMjU5NS5zazEuYXAtZWFzdC0xLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDEuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggaGstaXQtZC1la3MtY2x1c3RlciAtLWt1YmVsZXQtZXh0cmEtYXJncyAnLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXAtaW1hZ2U9YW1pLTBiY2JmZjcyZjdkMmJiMDU2LGVrcy5hbWF6b25hd3MuY29tL2NhcGFjaXR5VHlwZT1PTl9ERU1BTkQsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPWhrLWl0LWQtZWtzLWNsdXN0ZXItd29ya2Vybm9kZXMtMWEgLS1tYXgtcG9kcz01OCcgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
  vpc_security_group_ids = ["sg-0a5c0e344945d7a12", "sg-0fceb8a05dc6ef160"]
}
