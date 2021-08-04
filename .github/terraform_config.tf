# Definition du provider 
terraform {
  required_providers {
    # telechargement du binaire du provider aws
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.52.0"
    }
  }
  # version de terraform >= 1.0.3
  required_version = ">= 1.0.3"
}

# Configuration du provider aws
provider "aws" {
  region     = "eu-west-3" # Paris
  access_key = "AKIARH3KZ2BSHFNW5N7K"
  secret_key = "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"
}

# Build

