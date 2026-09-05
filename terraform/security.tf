resource "aws_security_group" "rds" {
  name        = "tech-challenge-oficina-rds-sg"
  description = "Security group for the Tech Challenge PostgreSQL RDS instance."
  vpc_id      = data.aws_vpc.shared.id

  ingress {
    description = "Allow PostgreSQL traffic from the shared VPC CIDR."
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = [data.aws_vpc.shared.cidr_block]
  }

  tags = {
    Project     = "tech-challenge-oficina"
    Environment = "shared"
    Name        = "tech-challenge-oficina-rds-sg"
  }
}
