resource "azurerm_resource_group" "RGnarendra7" {
  name     = "rgpradeep7"
  location = "West Europe"
}
resource "azurerm_resource_group" "RGnarendr8" {
  name     = "rg101"
  location = "West Europe"
}
 resource "azurerm_virtual_network" "vn_router" {
   name = "vnaman"
   address_space = ["10.0.0.0/16"]
   location = azurerm_resource_group.RGnarendra7
   resource_group_name      = azurerm_resource_group.RGnarendra7

   subnet {
    name = "subnet1"
    address_prefixes  = ["10.0.1.0/16"]
   }
 }