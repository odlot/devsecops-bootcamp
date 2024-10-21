terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket = "iac-bucket-devsecops-bootcamp"
    key    = "iac/project-23-state.tfstate"
    region = "eu-north-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.32"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.15"
    }
  }
}
