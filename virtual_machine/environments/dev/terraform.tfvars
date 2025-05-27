rgs-vinav = {
  rg1 = {
    "name"     = "rg-vinav14"
    "location" = "West Europe"
  }

}

storage_accounts = {
  sa1 = {
    name                     = "vinavstorage1"
    resource_group_name      = "rg-vinav14"
    location                 = "West Europe"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }

}
vnet = {
  vnet1 = {
    name                = "vinav_vnet"
    resource_group_name = "rg-vinav14"
    location            = "West Europe"
    address_space       = ["10.0.0.0/16"]
  }

}
subnet = {
  subnet1 = {
    name                 = "Frontend_subnet"
    resource_group_name  = "rg-vinav14"
    virtual_network_name = "vinav_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "Banckend_subnet"
    resource_group_name  = "rg-vinav14"
    virtual_network_name = "vinav_vnet"
    address_prefixes     = ["10.0.2.0/24"]

  }

}
linux_vm = {
  vm1 = {
    name                 = "vinavvm1"
    resource_group_name  = "rg-vinav14"
    location             = "West Europe"
    size                 = "Standard_B1s"
    admin_username       = "azureuser"
    admin_password       = "Vinav@1234"
    subnet_id            = "/subscriptions/3f36353f-22dc-45da-8c88-5a8ada998a83/resourceGroups/rg-vinav14/providers/Microsoft.Network/virtualNetworks/vinav_vnet/subnets/Frontend_subnet"
  }
}






