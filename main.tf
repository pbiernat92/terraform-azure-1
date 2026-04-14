provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-step1"
  location = "westeurope"
}

resource "azurerm_storage_account" "storage" {
  name                     = "tfstorage523133199886"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
  environment = "prod"
  project     = "terraform-learning"
}
}

resource "azurerm_storage_container" "container" {
  name                  = "mycontainer"
  storage_account_id = azurerm_storage_account.storage.id
  container_access_type = "private"
}

resource "azurerm_virtual_network" "moja_siec" {
  name                = "vnet-terraform"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.moja_siec.name
  address_prefixes     = ["10.0.1.0/24"]
}