resource "proxmox_vm_qemu" "k3s_master" {
  count = 3 #how many master nodes
  name = "k3s-master-${count.index + 1}" 
  onboot = true
  target_node = var.proxmox_host
  clone = var.template_name
  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 2048

  numa = true

  cloudinit_cdrom_storage = var.storage
  scsihw = "virtio-scsi-single"
  bootdisk = "scsi0"
  boot = "order=scsi0;ide3" 

  disks {
        scsi {
            scsi0 {
                disk {
                  storage = var.storage
                  size = 10
                }
            }
        }
  }
  
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  ipconfig0 = "ip=192.168.5.7${count.index + 1}/24,gw=192.168.5.1" #update to the IP addresses, user, DNS, & Gateway for your nodes
  ciuser = "robbie"
  nameserver = "192.168.5.1"
  
  sshkeys = <<EOF
  var.ssh_key
  EOF
}

