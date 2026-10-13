
resource "aws_s3_bucket" "homework_bucket" {
  bucket = "github-actions-homework-piyushh2-demo"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "homework_bucket_encryption" {
  bucket = aws_s3_bucket.homework_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "homework_bucket_logging" {
  bucket = aws_s3_bucket.homework_bucket.id

  target_bucket = aws_s3_bucket.homework_bucket.id
  target_prefix = "access-logs/"
}
