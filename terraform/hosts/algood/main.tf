variable "base_path" {
  type = string
}

variable "os_template" {
  type = string
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

variable "target_node" {
  type = string
}

module "proxmox_lxc" {
  source              = "../../modules/proxmox_lxc"
  hostname            = "algood"
  os_template         = var.os_template
  proxmox_username    = var.proxmox_username
  proxmox_password    = var.proxmox_password
  proxmox_ssh_pub_key = var.proxmox_ssh_pub_key
  target_node         = var.target_node
}

