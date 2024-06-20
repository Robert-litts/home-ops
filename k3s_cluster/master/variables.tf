#Master Nodes
variable "ssh_key" {
  default = "SSH PUBLIC KEY"
}

variable "proxmox_host" {
    default = "host_name"
}

variable "template_name" {
    default = "ubuntu-2404-cloudinit-template"
}

variable "ssh_key" {
  default = "SSH PUBLIC KEY"
}

variable "proxmox_host_1" {
    default = "host_1_name"
}

variable "proxmox_host_2" {
    default = "host_2_name"
}

variable "template_name" {
    default = "ubuntu-2404-cloudinit-template"
}

variable "proxmox_api_url" {
    default = "https://192.x.x.x:8006/api2/json"
}

variable "proxmox_api_token_id" {
    default = "terraform@pam!terraform_token"
}

variable "proxmox_api_token_secret" {
    default = "secret_token"
}

#Name of proxmox storage for the node VM
variable "storage" {
    default = "local-zfs"
}
