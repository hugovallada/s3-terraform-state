terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.31.0"
    }
  }

  backend "s3" {
    bucket = "hugolopes-terraform-state"
    key    = "tf-state/s3-terraform-state/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "hugovallada"
      managed-by = "terraform"
    }
  }
}
