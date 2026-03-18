terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.36.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}


terraform{
  backend "s3"{
    bucket = "tfstate-test-bucket-march"
    key = "non-prod/tfstate/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
