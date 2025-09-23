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
  ami           = "ami-06a974f9b8a97ecf2"  # Amazon Linux 2023
  instance_type = "t3.micro"
  instance_state = "stopped"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
