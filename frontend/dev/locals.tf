locals {
  region      = "eu-west-1"
  bucket_name = "enum-dev-tf-state-locking-bucket"
  table_name  = "enum-dev-tf-state-locking-table"

  ecr_repo_name = "enum-frontend-dev"

  cluster_name                 = "enum-frontend-dev"
  availability_zones           = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  task_famliy                  = "enum-frontend-dev"
  container_port               = 3000
  task_name                    = "enum-frontend-dev"
  ecs_task_execution_role_name = "enum-frontend-dev"

  application_load_balancer_name = "enum-frontend-dev"
  target_group_name              = "enum-frontend-dev"

  service_name = "enum-frontend-dev"
  domain       = "enum.africa"
  subdomain    = "systest-app.enum.africa"
  profile      = "enum-frontend-dev-profile"
}