resource "aws_msk_cluster" "hk-algo-d-msk" {
  cluster_name = "hk-algo-d-msk"
  kafka_version       = "3.2.0"
  number_of_broker_nodes = "3"

  broker_node_group_info {
    az_distribution = "DEFAULT"
    client_subnets  = ["subnet-015e798b75c0de098", "subnet-0339b072df6a1f486", "subnet-06d90ada28b6a8284"]
    
    connectivity_info {
      public_access {
        type = "DISABLED"
      }
    }

    instance_type   = "kafka.t3.small"
    security_groups = ["sg-062099ef1afdda13d"]

    storage_info {
      ebs_storage_info {
        volume_size = "300"
      }
    }
  }

  client_authentication {
    sasl {
      iam   = "true"
      scram = "false"
    }

    unauthenticated = "true"
  }

  

  configuration_info {
    arn      = "arn:aws:kafka:ap-east-1:328162702476:configuration/auto-create-topics-enable-true/a9ed0bd9-e7bd-4958-86e5-133d58ce9041-2"
    revision = "1"
  }

  encryption_info {
    encryption_at_rest_kms_key_arn = "arn:aws:kms:ap-east-1:328162702476:key/80823e99-4792-4afe-997f-4184d5196d9b"

    encryption_in_transit {
      client_broker = "TLS_PLAINTEXT"
      in_cluster    = "true"
    }
  }

  enhanced_monitoring = "DEFAULT"

  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled   = "true"
        log_group = "hk-algo-d-msk"
      }

      firehose {
        enabled = "false"
      }

      s3 {
        enabled = "false"
      }
    }
  }

  open_monitoring {
    prometheus {
      jmx_exporter {
        enabled_in_broker = "true"
      }

      node_exporter {
        enabled_in_broker = "true"
      }
    }
  }

  tags = {
    team = "algo"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap = "d-server-0067yxz39nth5o"
  }

}
