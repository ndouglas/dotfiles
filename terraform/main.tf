variable "hostnames" {
  type = map(list(string))
}

variable "network_ids" {
  type = map(number)
}

variable "network_names" {
  type = map(string)
}

variable "proxmox_username" {
  type = string
}

variable "proxmox_password" {
  type = string
}

variable "proxmox_ssh_pub_key" {
  type = string
}

variable "target_nodes" {
  type = list(string)
}

locals {
  base_path           = path.module
  proxmox_username    = var.proxmox_username
  proxmox_password    = var.proxmox_password
  proxmox_ssh_pub_key = var.proxmox_ssh_pub_key
  ubuntu_os_template  = "local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
  target_node         = "ryswell"
}

module "proxmox_data" {
  for_each     = toset(var.target_nodes)
  source       = "./modules/proxmox_data"
  target_node  = each.value
  hostnames    = var.hostnames[each.value]
  network_id   = var.network_ids[each.value]
  network_name = var.network_names[each.value]
}

module "algood" {
  source              = "./hosts/algood"
  base_path           = local.base_path
  os_template         = local.ubuntu_os_template
  proxmox_username    = local.proxmox_username
  proxmox_password    = local.proxmox_password
  proxmox_ssh_pub_key = local.proxmox_ssh_pub_key
  target_node         = "ryswell"
}
/**
output "proxmox_data" {
  value = module.proxmox_data
}
*/
