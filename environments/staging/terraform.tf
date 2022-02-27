terraform {
  backend "s3" {
    key = "cluster/terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environmment = var.environment
      Terraform    = "true"
    }
  }
}
