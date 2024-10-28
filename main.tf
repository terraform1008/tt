##this is the provider block
terraform {
  required_providers {
    azurerm = { #aws
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}