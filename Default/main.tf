resource "proxmox_vm_qemu" "pve03_default" {
  count = 1 # just want 1 for now, set to 0 and apply to destroy VM
  name = "Default"
  target_node = var.proxmox_host

  clone = var.template_name

  vmid = "100"
  agent = 1
  os_type = "cloud-init"
  cores = 1
  sockets = 4
  cpu = "host"
  memory = 8196
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  ciuser = var.ciuser
  cipassword = var.cipassword

  disk {
    slot = 0
    size = "4096G"
    type = "scsi"
    storage = "local-lvm"
    iothread = 1
  }
  
  network {
    model = "virtio"
    bridge = "vmbr0"
    tag = "10"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  ipconfig0 = "ip=192.168.x.x/24,gw=192.168.x.x"

  sshkeys = <<EOF
  ${var.ssh_key}
  EOF
}