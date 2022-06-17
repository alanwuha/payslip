terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c802847a7dd848c0"
  instance_type = "t2.micro"

  tags = {
    Name = "PayslipDjangoAppServerInstance"
  }
}
