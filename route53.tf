
resource "aws_acm_certificate" "stopme123" {
  domain_name       = "stopme123.tk"
  validation_method = "DNS"
   lifecycle {
    create_before_destroy = true
  }
}




resource "aws_route53_zone" "stopme123" {
name = "stopme123.tk"
}


resource "aws_route53_record" "stopme123" {
  for_each = {
    for dvo in aws_acm_certificate.stopme123.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = aws_route53_zone.stopme123.zone_id
}








