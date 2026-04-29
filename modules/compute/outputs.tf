output "public_ip" {
  description = "Public IP of the web EC2 instance"
  value       = aws_instance.web_server.public_ip
}
