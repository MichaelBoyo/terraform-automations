resource "aws_s3_bucket" "env_bucket" {
  bucket = "${var.profile}-env-bucket"

  tags = {
    Name        = "${var.profile}-env-bucket"
    Environment = "${var.profile}"
  }
}


# Write database connection details to a file
resource "local_file" "environment_variables" {
  filename = ".env"

  content = <<EOF


EOF
}

# Upload file to S3 bucket
resource "aws_s3_object" "environment_variables" {
  bucket = aws_s3_bucket.env_bucket.id
  key    = local_file.environment_variables.filename
  source = local_file.environment_variables.filename
}
