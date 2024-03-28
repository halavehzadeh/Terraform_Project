provider "aws" {
  region = "us-east-1"

}
#Create a Ec2 Intance in AWS
resource "aws_instance" "myec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t3.micro"
  tags = {
    Name = "My-First-Ec2"
  }
}

