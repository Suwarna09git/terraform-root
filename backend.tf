terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-aws-infrastructure-state-gauri"
    region         = "us-east-1"
    key            = "terraform-root/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
