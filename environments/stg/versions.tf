terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.44.0"
    }
  }

  backend "s3" {
    bucket = var.backend_bucket_name
    key    = "terraform.tfstate"
    region = var.region
  }
}
