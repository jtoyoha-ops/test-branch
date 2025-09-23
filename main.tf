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
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2023
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
