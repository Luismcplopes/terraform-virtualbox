variable "vm_name" {
  description = "NameVM"
  default = "my-vm"
}

variable "image" {
  description = "Image Path"
#  default = "noble-server-cloudimg-amd64.ova"
  default = "nvirtualbox.box" 
# nvirtualbox.box donwload from https://portal.cloud.hashicorp.com/vagrant/discover/gutehall/ubuntu24-04/versions/2024.11.21
}

variable "cpu_counts" {
  description = "VM CPU Counts"
  default     = "2"
}

variable "memory" {
  description = "VM Memory"
  default     = "4096 mib"
}

#variable "network_adapter_type" {
#  type        = string
#  description = "hostonly"
#  #"Type of Network Adapter (nat, bridged, hostonly)"
#}

#variable "host_interface" {
#  type        = string
#  description = "intnet"
#  #"Host Interface ('en0', 'eth1', 'wlan')"
#}
