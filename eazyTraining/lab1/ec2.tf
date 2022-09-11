
provider "aws" {
  region     = "us-east-1"
  # access_key = "my-access-key"
  # secret_key = "my-secret-key"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0057d8e6fb0692b80"
  instance_type = "t2.micro"
  key_name      = "lab-key"
  tags = {
    Name = "ec2-hacene"
  }
  root_block_device {
    delete_on_termination = true
  }
}

