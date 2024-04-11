terraform {
  required_version = "~> 1.3"

  backend "s3" {
    bucket = "enum-tf-state-locking-bucket"
    key    = "learnspace-tf-infra/terraform.tfstate"
    region = "eu-west-1"

    dynamodb_table = "enum-tf-state-locking-table"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

  }
}
provider "aws" {
  region = local.region
}


module "learnspace_postgres_db" {
  source         = "../../modules/db"
  db_password    = local.db_password
  db_identifier  = "learnspace-postgres"
  db_username    = "learnspace_postgres_db"
  instance_class = "db.t3.micro"

}
