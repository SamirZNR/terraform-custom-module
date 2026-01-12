provider "aws" {
  region     = "us-east-1"
}


resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "custom-module"
  }

}

