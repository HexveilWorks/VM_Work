
module "RG" {
  source = "../../RESOURCES/RESOURCE_GROUP"
  rgs=var.rgs
}

module "virtual_network1" {
  source = "../../RESOURCES/VIRTUAL_NETWORK"
  virtual_net = var.virtual_net
}

module "virtual_m" {
  source = "../../RESOURCES/VIRTUAL_MACHINE"
  virtual_vm = var.virtual_vm
  depends_on = [ module.nic ]
}

module "public_ip" {
  source = "../../RESOURCES/PUBLIC_IP"
  pip=var.pip
}

module "network_security_group" {
  source = "../../RESOURCES/NSG"
  nsg = var.nsg
}

module "network_interface" {
  source = "../../RESOURCES/NIC"
  NIC=var.NIC
  depends_on = [ module.virtual_network1, module.public_ip ]
}

module"keyvaults"{
  source = "../../RESOURCES/KEY_VAULT"
  key_vault=var.key_vault
}

module "security_association" {
  source = "../../RESOURCES/NSG_NIC_ASSOCIATION"
  security = var.security
  depends_on = [ module.network_interface, module.network_security_group ]
  
}