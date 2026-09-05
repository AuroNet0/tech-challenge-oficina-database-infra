data "aws_vpc" "shared" {
  tags = {
    Project     = "tech-challenge-oficina"
    Environment = "shared"
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.shared.id]
  }

  tags = {
    Tier = "private"
  }
}
