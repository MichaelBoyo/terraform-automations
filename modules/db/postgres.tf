// provision postgres db
resource "aws_db_instance" "postgres_db" {
  identifier             = var.db_identifier
  instance_class         = var.instance_class 
  allocated_storage      = 5
  max_allocated_storage  = 100
  engine                 = "postgres"
  engine_version         = "14.1"
  username               = var.db_username
  password               = var.db_password

  publicly_accessible    = true
  skip_final_snapshot    = true
}
