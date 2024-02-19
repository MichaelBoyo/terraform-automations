// s3 bucket arn

output "s3_env_file_arn" {
  value = "${aws_s3_bucket.env_bucket.arn}/.env"
}
