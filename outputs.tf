output "nat_gateway_public_ip" {
  value = aws_eip.nat.public_ip
}

output "instance_private_ip" {
  value = aws_instance.nginx.private_ip
}

output "alb_dns_name" {
  value = aws_lb.main.dns_name
}
