variable "db_password" {
  description = "DB Password"
  type        = string

}
variable "db_username" {
  description = "DB Username"
  type        = string

}
variable "db_identifier" {
  description = "DB Identifier"
  type        = string

}

variable "instance_class" {
  description = "DB Instance Class"
  type        = string
  default     = "db.t3.micro"

}

