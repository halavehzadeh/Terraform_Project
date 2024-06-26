provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "instance-1" {
  ami = "ami-082b5a644766e6f"
  instance_type = "t2.micro"
 count = 3  
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer","stage-loadbalancer","prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}
