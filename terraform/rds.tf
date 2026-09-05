resource "aws_db_subnet_group" "postgres" {
  name       = "tech-challenge-oficina-db-subnet-group"
  subnet_ids = data.aws_subnets.private.ids

  tags = {
    Project     = "tech-challenge-oficina"
    Environment = "shared"
    Name        = "tech-challenge-oficina-db-subnet-group"
  }
}

resource "aws_db_instance" "postgres" {
  identifier = "tech-challenge-oficina-postgres"

  engine         = "postgres"
  instance_class = "db.t4g.micro"

  allocated_storage     = 20
  max_allocated_storage = 0 /* Autoscaling desativado para evitar possível custo adicional */
  storage_type          = "gp3"
  storage_encrypted     = true

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  port                   = 5432
  publicly_accessible    = false
  multi_az               = false
  db_subnet_group_name   = aws_db_subnet_group.postgres.name
  vpc_security_group_ids = [aws_security_group.rds.id]

  deletion_protection          = false
  skip_final_snapshot          = true
  performance_insights_enabled = false
  monitoring_interval          = 0

  auto_minor_version_upgrade = true
  backup_retention_period    = 1
  apply_immediately          = true

  tags = {
    Project     = "tech-challenge-oficina"
    Environment = "shared"
    Name        = "tech-challenge-oficina-postgres"
  }
}
