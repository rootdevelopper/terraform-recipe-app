terraform {
  backend "s3" {
    bucket         = "recipe-app-api-devops-tfstate-v-10"
    key            = "recipe-app.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "recipe-app-api-devops-tf-state-lock"
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 2.54.0"
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    Owner       = var.contact
    ManagedBy   = "Terraform"
  }

  # Ami           = var.ami
  Instance_type = var.instance_type
}

data "aws_region" "current" {}