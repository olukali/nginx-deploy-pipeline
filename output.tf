output "lightsail_instance_public_ip" {
  description = "The public IP address of the Lightsail instance"
  value       = aws_lightsail_instance.lightsail_instance.public_ip_address
}