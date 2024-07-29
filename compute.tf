resource "aws_instance" "private" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.private[0].id
  security_groups = [aws_security_group.instance.id]
  depends_on      = [aws_nat_gateway.nat]

  user_data = file("user_data.sh")
}
