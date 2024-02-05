# Create a storage account
resource "azurerm_storage_account" "sa" {
  name                     = "saokrdataopsrterluun"
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Create a container in the storage account
resource "azurerm_storage_container" "sc" {
  name                  = "examplecontainer"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
