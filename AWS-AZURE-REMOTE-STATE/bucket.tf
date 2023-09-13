resource "aws_s3_bucket" "first_bucket" {
  bucket = "caiocardoso-remote-state"


  versioning {
    enabled = true
  }
}