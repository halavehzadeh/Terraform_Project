provider "aws" {
  region = "us-east-1"
}
resource "aws_eip" "lb" {
  domain   = "vpc"
}
resource "aws_security_group" "allow_tls" {
  name        = "Terrafrom-firewall"
  description = "Managed from Terraform"
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "${aws_eip.lb.public_ip}/32"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}
output "Public-ip" {
  value = aws_eip.lb
}
