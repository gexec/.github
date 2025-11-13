terraform {
  backend "s3" {
    bucket = "gexec-terraform"
    key    = "github"
    region = "eu-central-1"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.8.0"
    }
  }

  required_version = ">= 1.9"
}

provider "github" {
  owner = "gexec"
}
