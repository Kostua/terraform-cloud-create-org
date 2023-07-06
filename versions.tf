terraform {

  required_version = "= 1.4.6"

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.46.0"
    }
  }
}
