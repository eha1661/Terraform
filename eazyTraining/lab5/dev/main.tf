provider "aws" {
  region     = "us-east-1"
  # access_key = "my-access-key"
  # secret_key = "my-secret-key"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-ehchabane"
    key    = "lab-dev.tfstate"
    region = "us-east-1"
  # access_key = "my-access-key"
  # secret_key = "my-secret-key"
  }
}

module "ec2" {
  source = "../modules/ec2module"
  instancetype = "t2.nano"
  aws_common_tag = {
    Name = "ec2-dev-ehchabane"
  }
  sg_name = "dev-ehchabane-sg"
}
