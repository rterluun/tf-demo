terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=3.90.0"
        }
    }
    backend "azurerm" {
        resource_group_name = "rg_name"
        storage_account_name = "sa_name"
        container_name = "container_name"
        key = "test.tfstate"
    }
    required_version = "~>1.7.2"
}

provider "azurerm" {
    features {}
    skip_provider_registration = true
    storage_use_azuread = true
}

data "azurerm_resource_group" "rg" {
  name = "rg_name"
}
