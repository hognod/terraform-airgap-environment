terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }

    github = {
      source = "integrations/github"
      version = "6.3.1"
    }
  }
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}

provider "github" {
  base_url = var.github_base_url
  token = var.github_token
}