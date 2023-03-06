## Proxmox VE API URL
variable "pm_api_url" {
  type        = string
  description = "Proxmox VE Machines URL"
}

## Proxmox VE APT Token ID
variable "pm_api_token_id" {
  type        = string
  description = "Proxmox VE Token ID"
}

## Proxmox VE API Token Secret
variable "pm_api_token_secret" {
  type        = string
  description = "Proxmox VE Token Secret"
}

## Proxmox VE TLS Configuration
variable "pm_tls_insecure" {
  type        = string
  description = "Proxmox VE TLS Configuration"
}

## Proxmox VE hostname
variable "proxmox_host" {
    type        = string
    description = "Proxmox VE OS Template Name"
}

## Proxmox VE Template Name
variable "template_name" {
  type        = string
  description = "Proxmox VE OS Template Name"
}

## Proxmox VE OS User
variable "ciuser" {
  type        = string
  description = "Proxmox VE OS User"
}

## Proxmox VE OS Password
variable "cipassword" {
  type        = string
  description = "Proxmox VE OS Password"
}

## Proxmox VE default SSH Key Access
variable "ssh_key" {
  type        = string
  description = "Proxmox VE SSH Default Key Access"
}