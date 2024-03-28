provider "aws" {
  region     = "us-east-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

#Create a Ec2 Intance in AWS
resource "aws_instance" "myec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t3.micro"
  tags = {
    Name = "My-First-Ec2"
  }
}

#Add a user to IAM service

resource "aws_iam_user" "andrew" {
  name = "kplabs-demo-user"

}
