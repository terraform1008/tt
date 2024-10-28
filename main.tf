##this is the provider block
terraform {
  required_providers {
    azurerm = { #aws
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

    backend "azurerm" {
    resource_group_name  = "tf-demo-rg"
    storage_account_name = "tfdemo10008"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }

}

resource "azurerm_resource_group" "tfdemo" {
  name     = "terragit"
  location = "West Europe"
}