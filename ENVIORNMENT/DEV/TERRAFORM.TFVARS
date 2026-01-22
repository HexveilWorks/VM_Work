

rgs1 = {
  rg1 = {
    resource_group_name = "Resource_Group_1"
    location            = "eastus"
  }
}

virtual_net1 = {
  VM1 = {
    vnet_name           = "Virtual_Network"
    location            ="eastus"
    resource_group_name = "Resource_Group_1"
    address_space       = ["10.0.0.0/16"]

    subnet = {
      Frontend_subnet = {
        name             = "Frontend_subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      Backend_subnet = {
        name             = "Backend_subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
}

virtual_vm1 = {
  vm1 = {
    vm_name             = "FRONTEND-VM"
    resource_group_name = "Resource_Group_1"
    location            = "eastus"
    size                = "Standard_B2s"
    admin_username      = "devopsadminuser"
    admin_password      = "AdminPassword123!"
    nic_name            = "FRONTEND_NIC"
  }
  vm2 = {
    vm_name             = "BACKEND-VM"
    resource_group_name = "Resource_Group_1"
    location            = "eastus"
    size                = "Standard_B2s"
    admin_username      = "devopsadminuser"
    admin_password      = "AdminPassword123!"
    nic_name            = "BACKEND_NIC"
  }
}

pip1 = {
  vm1 = {
    public_ipname       = "FRONTEND_PUBLIC_IP"
    resource_group_name = "Resource_Group_1"
    location            = "eastus"
    allocation_method   = "Static"
  }
  vm2 = {
    public_ipname       = "BACKEND_PUBLIC_IP"
    resource_group_name = "Resource_Group_1"
    location            = "eastus"
    allocation_method   = "Static"
  }
}

nsg1 = {
  vm1 = {
    nsg_name            = "FRONTEND_NSG"
    location            = "eastus"
    resource_group_name = "Resource_Group_1"
  }
  vm2 = {
    nsg_name            = "BACKEND_NSG"
    location            ="eastus"
    resource_group_name = "Resource_Group_1"
  }
}


NIC1 = {
  vm1 = {
    nic_name            = "FRONTEND_NIC"
    location            = "eastus"
    resource_group_name = "Resource_Group_1"
    public_ip_name      = "FRONTEND_PUBLIC_IP"
    subnet_name         = "Frontend_subnet"
     vnet_name           = "Virtual_Network"
    ip_configuration = {
      ip1 = {
        name                          = "Internal"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
  vm2 = {
    nic_name            = "BACKEND_NIC"
    location            = "eastus"
    resource_group_name = "Resource_Group_1"
    public_ip_name      = "BACKEND_PUBLIC_IP"
    subnet_name         = "Backend_subnet"
     vnet_name           = "Virtual_Network"
    ip_configuration = {
      ip2 = {
        name                          = "Internal"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
}



key_vault1 = {
  key_vault = {
    keyvault_name       = "Ddevkeyvault"
    location            = "eastus"
    resource_group_name = "Resource_Group_1"
  }
}

security1 = {
  vm1 = {
    nic_name            = "FRONTEND_NIC"
    nsg_name            = "FRONTEND_NSG"
    resource_group_name = "Resource_Group_1"
  }
  vm2 = {
    nic_name            = "BACKEND_NIC"
    nsg_name            = "BACKEND_NSG"
    resource_group_name = "Resource_Group_1"
  }
}
