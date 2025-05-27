terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.30.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3f36353f-22dc-45da-8c88-5a8ada998a83"
}
