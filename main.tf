##this is the provider block
terraform {
  required_providers {
    azurerm = { #aws
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

resource "azurerm_resource_group" "terra_grp" {
  name     = "terra-rg"
  location = "West Europe"
}