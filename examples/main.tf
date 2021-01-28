provider "azurerm" {
  features {}
}

module "rg" {
  source = "../"

  naming_suffix = [
    "example"
  ]
  location = "northeurope"
}

output "rg_name" {
  value = module.rg.rg_name
}
