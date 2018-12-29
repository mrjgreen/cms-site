# resource "aws_route53_zone" "site" {
#   name    = "${var.domain}"
#   comment = "Managed by Terraform at ${var.provisionersrc}"

#   tags {
#     Application    = "${var.application}"
#     Owner          = "${var.owner}"
#     Provisioner    = "Terraform"
#     ProvisionerSrc = "${var.provisionersrc}"
#   }
# }

# resource "aws_route53_record" "site" {
#   zone_id = "${aws_route53_zone.site.zone_id}"
#   name    = "${var.domain}"
#   type    = "A"

#   alias {
#     name                   = "${aws_s3_bucket.site.website_domain}"
#     zone_id                = "${aws_s3_bucket.site.hosted_zone_id}"
#     evaluate_target_health = false
#   }
# }
