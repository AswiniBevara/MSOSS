variable "subscription_id" {
description = "existing subscription id"  
default = ""
}
variable "client_id" {
description = "existing subscription client_id"  
default = ""
}
variable "client_secret" {
description = "existing subscription client_secret"  
default = ""
}
variable "tenant_id" {
description = "existing subscription tenant_id "  
default = ""
}
variable "vnetName"{
description = "Exisiting virtual network name"
default = "MyVNET"
}
variable "subnetName" {
description = "Exisiting subnet name"
default = "ELK"
}
variable "ResourceGroup" {
description = "name of the resource group which we created the vnet"
default = ""
}
variable "Location"{
 description = "where the vnet is create"
 default = ""
 }
variable "DynamicIP"{
description =  "public_ip_address_allocation dynamic type"
default = "dynamic"
}
variable "storageAccType"{
description = "storage account type"
default = "Standard_LRS"
}
variable "vmSize" {
description = "virtual machine size"
default = "Standard_DS1_v2"
}
variable "vmName" {
description = "virtual machine name"
default = "ELk_kibanavm"
}
variable "userName" {
 description = "virtual machine admin user name"
 default = "adminuser"
}
variable "password" {
description = "virtual machine admin password"
default = "Password@1234"
}