resource "azurerm_resource_group" "rg-project" {

  for_each = {

    prod = {
      name     = "corp-prod-rg-westus"
      location = "East US"
    }

    dev = {
      name     = "corp-dev-rg-westus"
      location = "East US"
    }

    test = {
      name     = "corp-test-rg-westus"
      location = "East US"
    }

    dr = {
      name     = "corp-dr-rg-westus"
      location = "East US"
    }

  }

  name     = each.value.name
  location = each.value.location

}