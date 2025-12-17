provider "azurerm" {
  region = "southeastasia"
}

resource "azurerm_linux_function_app" "milky_gold_horse" {
  runtime_name          = "java"
  runtime_version       = "17"
  name                  = "milky_gold_horse"
  instance_memory_in_mb = 1664
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

resource "azurerm_linux_function_app" "insecure_yellow_eagle" {
  runtime_name          = "dotnet-isolated"
  runtime_version       = "10"
  name                  = "insecure_yellow_eagle"
  instance_memory_in_mb = 1920
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

resource "azurerm_linux_virtual_machine" "near_purple_elephant" {
  size = "Standard_E8a_v4"
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

