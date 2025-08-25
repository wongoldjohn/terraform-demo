output "ec2_public_ip" {
  description = "Public IP of the demo EC2 instance"
  value       = aws_instance.demo_ec2.public_ip
}
