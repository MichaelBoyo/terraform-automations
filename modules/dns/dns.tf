

data "aws_route53_zone" "primary" {
  count = 1
  name  = var.domain
}

locals {
  dns_zone_id = data.aws_route53_zone.primary[0].zone_id

}

resource "aws_route53_record" "root" {
  zone_id = local.dns_zone_id
  name    = var.subdomain
  type    = "A"

  alias {
    name                   = var.dns_name
    zone_id                = var.zone_id
    evaluate_target_health = true
  }
}


