provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
 count = 1
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-server"
  }
}
