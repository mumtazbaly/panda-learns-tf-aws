# EC2 instance identifiers
output "instance_ids" {
  description = "IDs of the EC2 instances created for this project."
  value       = aws_instance.myserver[*].id
}

# Resource ARNs
output "instance_arns" {
  description = "ARNs of the EC2 instances created for this project."
  value       = aws_instance.myserver[*].arn
}

output "security_group_arns" {
  description = "ARNs of the security groups attached to the EC2 instances."
  value       = aws_security_group.web[*].arn
}

# Public access details
output "public_ips" {
  description = "Public IP addresses of the EC2 instances."
  value       = aws_instance.myserver[*].public_ip
}

output "public_dns" {
  description = "Public DNS names of the EC2 instances."
  value       = aws_instance.myserver[*].public_dns
}

# Private network details
output "private_ips" {
  description = "Private IP addresses of the EC2 instances."
  value       = aws_instance.myserver[*].private_ip
}

output "availability_zones" {
  description = "Availability zones where the EC2 instances were created."
  value       = aws_instance.myserver[*].availability_zone
}
