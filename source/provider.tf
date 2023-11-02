
provider "aws" {
  region = "us-east-1"
  alias  = "project_region"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.23.1"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "dela-terraform"
    key    = "jomacs-project/terraform.tfstate"
    region = "us-east-1"
  }
}

