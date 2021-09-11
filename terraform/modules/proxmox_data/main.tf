variable "hostnames" {
  type = list(string)
}

variable "network_id" {
  type = number
}

variable "network_name" {
  type = string
}

variable "target_node" {
  type = string
}

locals {
  hostname     = var.target_node
  hostnames    = var.hostnames
  router_ip    = "10.${var.network_id}.0.1"
  lan_ip       = "10.${var.network_id}.0.2"
  network_name = var.network_name
  hosts = { for index, hostname in var.hostnames :
    hostname => {
      vmid        = 100 + index
      onboot      = true
      description = hostname
      features = {
        nesting = true
      }
      force       = true
      hastate     = "started"
      memory      = 4096
      rootfs_size = "8G"
      network = {
        name   = "eth0"
        bridge = "vmbr0"
        hwaddr = format("de:fe:c8:%x:00:%x", var.network_id, 100 + index)
        ip     = "10.${var.network_id}.0.${100 + index}"
        ip6    = "manual"
      }
      unprivileged = false
    }
  }
}

output "hostname" {
  value = local.hostname
}

output "hostnames" {
  value = local.hostnames
}

output "hosts" {
  value = local.hosts
}

output "lan_ip" {
  value = local.lan_ip
}

output "network_name" {
  value = local.network_name
}

output "router_ip" {
  value = local.router_ip
}
