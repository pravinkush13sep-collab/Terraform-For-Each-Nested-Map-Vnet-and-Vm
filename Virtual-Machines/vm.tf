# resource "azurerm_windows_virtual_machine" "vm-project" {

#   for_each = {

#     vm1 = {
#       name     = "corp-prod-vm01"
#       rg       = "corp-prod-rg-eastus"
#       location = "East US"
#     }

#     vm2 = {
#       name     = "corp-dev-vm01"
#       rg       = "corp-dev-rg-eastus"
#       location = "West US"
#     }

#   }

#   name                = each.value.name
#   resource_group_name = each.value.rg
#   location            = each.value.location

#   size = "Standard_B1s"

#   admin_username = "azureuser"
#   admin_password = "P@ssw0rd1234!"

#   network_interface_ids = [
#     azurerm_network_interface.nic-project[each.key].id
#   ]

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2022-datacenter-azure-edition"
#     version   = "latest"
#   }
# }