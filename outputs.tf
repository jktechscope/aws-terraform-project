output "vpc_id" {
  description = "The ID of the custom VPC"
  value       = aws_vpc.main_vpc.id
}

output "web_public_ip" {
  description = "Public IP address of the deployed EC2 instance"
  value       = aws_instance.web_server.public_ip
}