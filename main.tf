terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#Create EC2 instance

resource "aws_instance" "terrainstance" {
  ami           = "ami-0c614dee691cbbf37"
  instance_type = "t2.micro"

  tags = {
    Name = "terrainstance2"
  }
}