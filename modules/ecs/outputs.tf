output "dns_name" {
  value = aws_alb.application_load_balancer.dns_name
}
output "zone_id" {
  value = aws_alb.application_load_balancer.zone_id
}
output "listener_arn" {
  value = aws_lb_listener.listener.arn
}
