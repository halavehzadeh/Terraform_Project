variable "vpn_ip" {
  default = "200.7.124.210/32"
  description = "This is a VPN Server created in AWS"
}
variable "app_port" {
  default = "8080"
}

variable "shh_port" {
  default = "22"
}

variable "ftp_port" {
  default = "21"
}
