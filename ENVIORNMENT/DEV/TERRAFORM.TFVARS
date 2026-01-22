

resource_groups = {
  rg1 = {
    resource_group_name = "Resource_Group_1"
    location            = "centralindia"
  }
}

virtual_net = {
  VM1 = {
    vnet_name           = "Virtual_Network"
    location            = "centralindia"
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

virtual_vm = {
  vm1 = {
    vm_name             = "FRONTEND_VM"
    resource_group_name = "Resource_Group_1"
    location            = "centralindia"
    size                = "Standard_B2s"
    admin_username      = "devopsadminuser"
    admin_password      = "AdminPassword123!"
    nic_name            = "FRONTEND_NIC"
  }
  vm2 = {
    vm_name             = "BACKEND_VM"
    resource_group_name = "Resource_Group_1"
    location            = "centralindia"
    size                = "Standard_B2s"
    admin_username      = "devopsadminuser"
    admin_password      = "AdminPassword123!"
    nic_name            = "BACKEND_NIC"
  }
}

pip = {
  vm1 = {
    public_ipname       = "FRONTEND_PUBLIC_IP"
    resource_group_name = "Resource_Group_1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  vm2 = {
    public_ipname       = "BACKEND_PUBLIC_IP"
    resource_group_name = "Resource_Group_1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

nsg = {
  vm1 = {
    nsg_name            = "FRONTEND_NSG"
    location            = "centralindia"
    resource_group_name = "Resource_Group_1"
  }
  vm2 = {
    nsg_name            = "BACKEND_NSG"
    location            = "centralindia"
    resource_group_name = "Resource_Group_1"
  }
}


NIC = {
  vm1 = {
    nic_name            = "FRONTEND_NIC"
    location            = "centralindia"
    resource_group_name = "Resource_Group_1"
    subnet_name         = "Frontend_subnet"
    public_ip_name      = "FRONTEND_PUBLIC_IP"

    ip_configuration = {
      ip1 = {
        name                          = "Internal"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
  vm2 = {
    nic_name            = "BACKEND_NIC"
    location            = "centralindia"
    resource_group_name = "Resource_Group_1"
    subnet_name         = "Backend_subnet"
    public_ip_name      = "BACKEND_PUBLIC_IP"
    ip_configuration = {
      ip2 = {
        name                          = "Internal"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
}



key_vault= {
  key_vault={
    key_vault_name      = "DEV_VM_KEY_VAULT"
    location            = "central_india"
    resource_group_name = "Resource_Group_1"
  }
}

security={
  vm1={
    nic_name="FRONTEND_NIC"
    nsg_name= "FRONTEND_NSG"
    resource_group_name=
  }
  vm2={
    nic_name="BACKEND_NIC"
    nsg_name="BACKEND_NSG"
    resource_group_name="Resource_Group_1"
  }
}