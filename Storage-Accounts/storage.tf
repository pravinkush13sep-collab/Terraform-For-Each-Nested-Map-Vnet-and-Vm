resource "azurerm_storage_account" "sta-project" {

  for_each = {

    prod = {
      name = "corpstaprod78601"
      rg   = "corp-prod-rg-westus"
      location = "East US"
      at = "Standard"
      art = "LRS"
    }

    dev = {
      name = "corpstadev78601"
      rg   = "corp-dev-rg-westus"
      location = "West US"
      at = "Standard"
      art = "LRS"
    }

    test = {
      name = "corpstatest78601"
      rg   = "corp-test-rg-westus"
      location = "South Central US"
      at = "Standard"
      art = "LRS"
    }

    dr = {
      name = "corpstadr78601"
      rg   = "corp-dr-rg-westus"
      location = "North Europe"
      at = "Standard"
      art = "LRS"
    }

  }

  name                     = each.value.name
  resource_group_name      = each.value.rg
  location                 = each.value.location
  account_tier             = each.value.at
  account_replication_type = each.value.art

}