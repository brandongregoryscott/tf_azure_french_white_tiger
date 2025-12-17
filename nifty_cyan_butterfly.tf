provider "azurerm" {
  region = "brazilsouth"
}

resource "azurerm_linux_virtual_machine" "free_magenta_panda" {
  size = "Standard_D16ds_v5"
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

resource "azurerm_linux_function_app" "peaceful_purple_kangaroo" {
  runtime_name          = "powershell"
  runtime_version       = "7.4"
  name                  = "peaceful_purple_kangaroo"
  instance_memory_in_mb = 3968
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

resource "azurerm_linux_function_app" "round_lavender_bee" {
  runtime_name          = "python"
  runtime_version       = "3.11"
  name                  = "round_lavender_bee"
  instance_memory_in_mb = 3072
  tags {
    Environment = "Dev"
    Service     = "service"
  }
}

