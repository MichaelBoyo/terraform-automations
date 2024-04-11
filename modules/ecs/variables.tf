variable "cluster_name" {
  description = "ECS Cluster Name"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string

}

variable "availability_zones" {
  description = "us-east-1 AZs"
  type        = list(string)
}

variable "task_famliy" {
  description = "ECS Task Family"
  type        = string
}

variable "ecr_repo_url" {
  description = "ECR Repo URL"
  type        = string
}

variable "container_port" {
  description = "Container Port"
  type        = number
}

variable "task_name" {
  description = "ECS Task Name"
  type        = string
}

variable "ecs_task_execution_role_name" {
  description = "ECS Task Execution Role Name"
  type        = string
}

variable "application_load_balancer_name" {
  description = "ALB Name"
  type        = string
}

variable "target_group_name" {
  description = "ALB Target Group Name"
  type        = string
}

variable "service_name" {
  description = "ECS Service Name"
  type        = string
}

variable "domain" {
  description = "Domain Name"
  type        = string

}

variable "s3_env_file_arn" {
  description = "S3 Bucket ARN"
  type        = string

}

variable "create_new_cluster" {
  description = "Set to true if you want to create a new ECS cluster, false to use an existing one"
  type        = bool
  default     = true
}
