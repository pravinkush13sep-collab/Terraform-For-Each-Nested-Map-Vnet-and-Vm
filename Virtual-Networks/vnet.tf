resource "azurerm_network_interface" "nic-project" {

  for_each = {

    prod = {
      name     = "corp-prod-nic01"
      rg       = "corp-prod-rg-westus"
      location = "East US"
    }

    dev = {
      name     = "corp-dev-nic01"
      rg       = "corp-dev-rg-westus"
      location = "East US"
    }

    test = {
      name     = "corp-test-nic01"
      rg       = "corp-test-rg-westus"
      location = "East US"
    }

    dr = {
      name     = "corp-dr-nic01"
      rg       = "corp-dr-rg-westus"
      location = "East US"
    }

  }

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet-project[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}