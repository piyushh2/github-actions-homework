
resource "aws_s3_bucket" "homework_bucket" {
  bucket = "github-actions-homework-piyushh2-demo"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "homework_bucket_encryption" {
  bucket = aws_s3_bucket.homework_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
