
module "RG" {
  source = "../../RESOURCES/RESOURCE_GROUP"
  rgs1=var.rgs1
}

module "virtual_network1" {
  source = "../../RESOURCES/VIRTUAL_NETWORK"
  virtual_net1 = var.virtual_net1
  depends_on = [ module.RG ]
}

module "virtual_m" {
  source = "../../RESOURCES/VIRTUAL_MACHINE"
  virtual_vm1 = var.virtual_vm1
  depends_on = [ module.network_interface ]
}

module "public_ip" {
  source = "../../RESOURCES/PUBLIC_IP"
  pip1=var.pip1
  depends_on = [ module.RG,module.network_security_group ]
}

module "network_security_group" {
  source = "../../RESOURCES/NSG"
  nsg1 = var.nsg1
  depends_on = [ module.RG,module.virtual_network1 ]
}

module "network_interface" {
  source = "../../RESOURCES/NIC"
  NIC1=var.NIC1
  depends_on = [ module.virtual_network1, module.public_ip ]
}

module"keyvaults"{
  source = "../../RESOURCES/KEY_VAULT"
  key_vault1=var.key_vault1
  depends_on = [ module.RG ]
}

module "security_association" {
  source = "../../RESOURCES/NSG_NIC_ASSOCIATION"
  security1 = var.security1
  depends_on = [ module.network_interface, module.network_security_group ]
  
}

module "sql_server" {
  source          = "../../modules/azurerm_sql_server"
  sql_server_name = "sql-dev-todoapp-9879"
  rg_name         = "rg-pilu-dev-todoapp-01"
  location        = "centralindia"
  admin_username  = "devopsadmin"
  admin_password  = "P@ssw01rd@123"
  tags            = {}
}


module "sql_db" {
  depends_on  = [module.sql_server]
  source      = "../../modules/azurerm_sql_database"
  sql_db_name = "sqldb-dev-todoapp"
  server_id   = module.sql_server.server_id
  max_size_gb = "2"
  tags        = {}
}

