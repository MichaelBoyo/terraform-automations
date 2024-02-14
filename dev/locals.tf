locals {
  region      = "eu-west-1"
  bucket_name = "enum-dev-tf-state-locking-bucket"
  table_name  = "enum-dev-tf-state-locking-table"

  ecr_repo_name = "enum-dev-ecr-repo"

  cluster_name                 = "enum-dev-cluster"
  availability_zones           = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  task_famliy                  = "enum-dev-task"
  container_port               = 8080
  task_name                    = "enum-dev-task"
  ecs_task_execution_role_name = "enum-dev-task-execution-role"

  application_load_balancer_name = "enum-dev-alb"
  target_group_name              = "enum-dev-alb-tg"

  service_name = "enum-dev-service"
  domain       = "enum.africa"
  subdomain    = "api-dev.enum.africa"
}
