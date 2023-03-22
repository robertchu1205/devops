resource "aws_db_instance" "hk-algo-d-rds-postgresql" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "ap-east-1b"
  backup_retention_period               = "7"
  backup_window                         = "20:00-21:00"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  copy_tags_to_snapshot                 = "true"
  customer_owned_ip_enabled             = "false"
  db_subnet_group_name                  = "${aws_db_subnet_group.hk-algo-d-rds-subnet.name}"
  deletion_protection                   = "true"
  engine                                = "postgres"
  engine_version                        = "14.2"
  iam_database_authentication_enabled   = "false"
  identifier                            = "hk-algo-d-rds-postgresql"
  instance_class                        = "db.t3.small"
  iops                                  = "0"
  license_model                         = "postgresql-license"
  maintenance_window                    = "sat:21:00-sat:22:00"
  max_allocated_storage                 = "1000"
  monitoring_interval                   = "60"
  monitoring_role_arn                   = "arn:aws:iam::328162702476:role/rds-monitoring-role"
  multi_az                              = "false"
  option_group_name                     = "default:postgres-14"
  parameter_group_name                  = "default.postgres14"
  performance_insights_enabled          = "true"
  performance_insights_retention_period = "7"
  port                                  = "5432"
  publicly_accessible                   = "false"
  storage_encrypted                     = "true"
  storage_type                          = "gp2"
  username                              = "aqumon"
  password                              = "h3pU75Q7tMUJEq"
  vpc_security_group_ids                = ["sg-097b0061189fac29e"]
}
