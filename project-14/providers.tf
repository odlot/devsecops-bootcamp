terraform {
  backend "s3" {
    bucket = "iac-bucket-devsecops-bootcamp"
    key = "infra/state.tfstate"
    region = "eu-north-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.3"
    }
  }
}
