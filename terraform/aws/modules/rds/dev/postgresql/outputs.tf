output "aws_db_instance_hk-algo-d-rds-postgresql_id" {
  value = "${aws_db_instance.hk-algo-d-rds-postgresql.id}"
}

output "aws_db_subnet_group_hk-algo-d-rds-subnet_id" {
  value = "${aws_db_subnet_group.hk-algo-d-rds-subnet.id}"
}
