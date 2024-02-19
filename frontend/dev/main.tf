terraform {
  required_version = "~> 1.3"

  backend "s3" {
    bucket = "enum-tf-state-locking-bucket"
    key    = "tf-infra/terraform.tfstate"
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




module "ecrRepo" {
  source = "../../modules/ecr"

  ecr_repo_name = local.ecr_repo_name
}

module "ecsCluster" {
  source = "../../modules/ecs"

  cluster_name = local.cluster_name


  availability_zones = local.availability_zones

  task_famliy                  = local.task_famliy
  ecr_repo_url                 = module.ecrRepo.repository_url
  container_port               = local.container_port
  task_name                    = local.task_name
  ecs_task_execution_role_name = local.ecs_task_execution_role_name

  application_load_balancer_name = local.application_load_balancer_name
  target_group_name              = local.target_group_name
  service_name                   = local.service_name
  domain                         = local.domain
  s3_env_file_arn                = module.s3_env.s3_env_file_arn

  region = local.region
}


module "dns" {
  source       = "../../modules/dns"
  domain       = local.domain
  subdomain    = local.subdomain
  dns_name     = module.ecsCluster.dns_name
  zone_id      = module.ecsCluster.zone_id
  region       = local.region
  listener_arn = module.ecsCluster.listener_arn

}



module "s3_env" {
  source  = "../../modules/s3"
  profile = local.profile

}

