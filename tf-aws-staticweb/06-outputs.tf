# S3 bucket identifiers
output "bucket_name" {
  description = "Name of the S3 bucket hosting the static website."
  value       = aws_s3_bucket.mywebapp-bucket.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket hosting the static website."
  value       = aws_s3_bucket.mywebapp-bucket.arn
}

output "bucket_id" {
  description = "ID of the S3 bucket hosting the static website."
  value       = aws_s3_bucket.mywebapp-bucket.id
}

# Static website access details
output "website_endpoint" {
  description = "S3 website endpoint for the static site."
  value       = aws_s3_bucket_website_configuration.mywebapp.website_endpoint
}

output "website_url" {
  description = "HTTP URL to access the static website homepage."
  value       = "http://${aws_s3_bucket_website_configuration.mywebapp.website_endpoint}"
}

output "website_index_url" {
  description = "HTTP URL to the website index file."
  value       = "http://${aws_s3_bucket_website_configuration.mywebapp.website_endpoint}/index.html"
}

output "bucket_domain_name" {
  description = "Domain name of the S3 bucket."
  value       = aws_s3_bucket.mywebapp-bucket.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "Regional domain name of the S3 bucket."
  value       = aws_s3_bucket.mywebapp-bucket.bucket_regional_domain_name
}
