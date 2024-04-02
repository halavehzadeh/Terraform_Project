provider "aws" {
  region = "us-east-1"
}
resource "aws_eip" "lb" {
  domain = "vpc"
}

output "Public-ip" {
  value = aws_eip.lb
}

resource "aws_security_group" "variable_test" {
  name        = "Variable test group "
  description = "Managed from Terraform"
}
resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.variable_test.id
  cidr_ipv4         = var.vpn_ip
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
}
resource "aws_vpc_security_group_ingress_rule" "aah_port" {
  security_group_id = aws_security_group.variable_test.id
  cidr_ipv4         = var.vpn_ip
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.variable_test.id
  cidr_ipv4         = var.vpn_ip
  from_port         = 21
  ip_protocol       = "tcp"
  to_port           = 21
}
