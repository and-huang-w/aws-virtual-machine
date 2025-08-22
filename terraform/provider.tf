# PROVIDER
terraform {

  required_version = "~> 1.11.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.9.0"
    }
  }

  backend "s3" {
    bucket       = "aws-s3-tfstate-huangfiap"
    key          = "aws-virtual-machine.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }

}

# provider "aws" {
#   region                   = "us-east-1"
#   shared_config_files      = [".aws/config"]
#   shared_credentials_files = [".aws/credentials"]
#   profile                  = "iac"
# }