# S3 bucket identifiers
output "bucket_name" {
  description = "Name of the S3 bucket created for this project."
  value       = aws_s3_bucket.panda-learns-bucket.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket."
  value       = aws_s3_bucket.panda-learns-bucket.arn
}

output "bucket_id" {
  description = "ID of the S3 bucket."
  value       = aws_s3_bucket.panda-learns-bucket.id
}

# S3 bucket endpoints
output "bucket_domain_name" {
  description = "The domain name of the bucket."
  value       = aws_s3_bucket.panda-learns-bucket.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "The regional domain name of the bucket."
  value       = aws_s3_bucket.panda-learns-bucket.bucket_regional_domain_name
}
