variable "aws_region" {
  type        = string
  description = "AWS region used to provision the database infrastructure."
  default     = "us-east-1"
}

variable "db_name" {
  type        = string
  description = "Name of the PostgreSQL database."
  default     = "oficina"
}

variable "db_username" {
  type        = string
  description = "Username used by the PostgreSQL database administrator."
  default     = "oficina_admin"
}

variable "db_password" {
  type        = string
  description = "Password for the PostgreSQL database administrator. It must be provided externally and never committed to Git."
  sensitive   = true
}
