terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">=1.0.0"
    }
  }
  required_version = ">= 0.14.9"
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

variable "hostname" {
  type = string
}

variable "os_template" {
  type = string
}

variable "target_node" {
  type = string
}

provider "proxmox" {
  pm_user     = var.proxmox_username
  pm_password = var.proxmox_password
  pm_api_url  = "https://${var.target_node}.hellholt.net:8006/api2/json"
}
/**
resource "proxmox_lxc" "default" {
  target_node  = var.target_node
  hostname     = var.hostname
  ostemplate   = var.os_template
  unprivileged = false

  ssh_public_keys = <<-EOT
    ${var.proxmox_ssh_pub_key}
  EOT

  features {
    fuse    = true
    nesting = true
    mount   = "nfs;cifs"
  }

  rootfs {
    storage = "local-lvm"
    size    = "8G"
  }

  // NFS share mounted on host
  mountpoint {
    slot    = "0"
    storage = "/mnt/host/nfs"
    mp      = "/mnt/container/nfs"
    size    = "250G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "10.0.0.2/24"
    ip6    = "auto"
  }
}
*/
