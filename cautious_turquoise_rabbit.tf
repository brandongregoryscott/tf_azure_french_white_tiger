provider "azurerm" {
  region = "eastus2"
}

resource "azurerm_linux_virtual_machine" "shabby_gold_peacock" {
  size = "Standard_D4ds_v5"
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

resource "azurerm_linux_virtual_machine" "pricey_olive_squirrel" {
  size = "Standard_E96s_v6"
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

resource "azurerm_linux_function_app" "lively_blue_deer" {
  runtime_name          = "dotnet-isolated"
  runtime_version       = "10"
  name                  = "lively_blue_deer"
  instance_memory_in_mb = 2560
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

