resource "aws_s3_bucket" "site" {
  bucket = "${var.domain}"
  acl    = "public-read"   # Needs to be public for a website

  versioning {
    enabled = false
  }

  lifecycle_rule {
    prefix  = ""
    enabled = true

    noncurrent_version_expiration {
      days = 7
    }
  }

  website {
    index_document = "index.html"
    error_document = "404.html"   # Actually displayed for all 4XX errors
  }

  tags {
    Application    = "${var.application}"
    Owner          = "${var.owner}"
    Provisioner    = "Terraform"
    ProvisionerSrc = "${var.provisionersrc}"
  }
}
