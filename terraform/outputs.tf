output "rds_endpoint" {
  description = "Endpoint of the PostgreSQL RDS instance."
  value       = aws_db_instance.postgres.endpoint
}

output "rds_port" {
  description = "Port of the PostgreSQL RDS instance."
  value       = aws_db_instance.postgres.port
}

output "rds_database_name" {
  description = "Name of the PostgreSQL database."
  value       = aws_db_instance.postgres.db_name
}

output "rds_security_group_id" {
  description = "ID of the RDS security group."
  value       = aws_security_group.rds.id
}
