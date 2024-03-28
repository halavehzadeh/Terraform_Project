provider "aws" {
  region = "us-east-1"

}

#Add a user to IAM service

resource "aws_iam_user" "andrew" {
  name = "kplabs-demo-user"
}
