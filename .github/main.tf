resource "aws_s3_bucket" "stopify" {
  bucket_prefix = "stopify-"
  acl           = "public-read"
  website {
    index_document = "index.html"
    error_document = "404.html"
  }
  force_destroy = true
}

resource "aws_s3_bucket_policy" "bucket_stopify" {
  bucket = aws_s3_bucket.stopify.id
  policy = jsonencode({
    Id = "PolicyForPublicRead"
    Statement = [
      {
        Action    = "s3:GetObject"
        Effect    = "Allow"
        Principal = "*"
        Resource  = "${aws_s3_bucket.stopify.arn}/*"
        Sid       = "PublicReadGetObject"
      },
    ]
    Version = "2012-10-17"
  })
}

output "bucket_id" {
  value = aws_s3_bucket.stopify.id
}

output "bucket_url" {
  value = "http://${aws_s3_bucket.stopify.website_endpoint}"
}

