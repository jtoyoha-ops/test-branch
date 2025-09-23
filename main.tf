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
  ami           = "ami-0c5777a14602ab4b9"  # Amazon Linux 2023
  instance_type = "t4g.nano"  # Graviton

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
