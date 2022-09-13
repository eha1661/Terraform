provider "aws" {
  region     = "us-east-1"
  # access_key = "my-access-key"
  # secret_key = "my-secret-key"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-dirane"
    key    = "lab-prod.tfstate.tfstate"
    region = "us-east-1"
  # access_key = "my-access-key"
  # secret_key = "my-secret-key"
  }
}

module "ec2" {
  source = "../modules/ec2module"
  instancetype = "t2.micro"
  aws_common_tag = {
    Name = "ec2-prod-ehchabane"
  }
  sg_name = "prod-ehchabane-sg"
}
