resource "azurerm_subnet" "subnet-project" {

  for_each = {

    prod = {
      name = "corp-prod-snet-app"
      rg   = "corp-prod-rg-westus"
      vnet = "corp-prod-vnet-eastus"
      cidr = ["10.0.1.0/24"]
    }

    dev = {
      name = "corp-dev-snet-app"
      rg   = "corp-dev-rg-westus"
      vnet = "corp-dev-vnet-eastus"
      cidr = ["10.1.1.0/24"]
    }

    test = {
      name = "corp-test-snet-app"
      rg   = "corp-test-rg-westus"
      vnet = "corp-test-vnet-eastus"
      cidr = ["10.2.1.0/24"]
    }

    dr = {
      name = "corp-dr-snet-app"
      rg   = "corp-dr-rg-westus"
      vnet = "corp-dr-vnet-eastus"
      cidr = ["10.3.1.0/24"]
    }

  }

  name                 = each.value.name
  resource_group_name  = each.value.rg
  virtual_network_name = each.value.vnet
  address_prefixes     = each.value.cidr

}
