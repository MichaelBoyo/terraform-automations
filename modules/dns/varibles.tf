# General Variables

variable "region" {
  description = "Default region for provider"
  type        = string
}




variable "domain" {
  description = "Domain for website"
  type        = string
}

variable "dns_name" {
  description = "DNS name of the load balancer"
  type        = string
}
variable "zone_id" {
  description = "Zone ID of the load balancer"
  type        = string
}

variable "subdomain" {
  description = "Subdomain for website"
  type        = string
}

variable "listener_arn" {
  description = "Listener ARN"
  type        = string
}