terraform {
  backend "s3" {
    bucket                      = "gexec-terraform"
    key                         = "github.tfstate"
    region                      = "auto"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
    endpoints = {
      s3 = "https://4fc42edfd414051cf85497affc49b987.r2.cloudflarestorage.com"
    }
  }

  required_providers {
    cloudflare = {
      source  = "integrations/github"
      version = "~> 6.5.0"
    }
  }

  required_version = ">= 1.0"
}

provider "github" {
  owner = "gexec"
}
