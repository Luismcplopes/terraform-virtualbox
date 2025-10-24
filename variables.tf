variable "vm_name" {
  description = "NameVM"
  default = "my-vm"
}

variable "image" {
  description = "Image Path"
#  default = "noble-server-cloudimg-amd64.ova"
  default = "nvirtualbox.box"
# https://vagrantcloud-files-production.s3-accelerate.amazonaws.com/archivist/boxes/gutehall/ubuntu24-04/2024.11.21/virtualbox/78132684-a82c-11ef-a567-66128849e2ed?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA6NDPRW4BT33Y2LP2%2F20251019%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20251019T231637Z&X-Amz-Expires=900&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEDgaCXVzLWVhc3QtMSJHMEUCIBeQ%2FAdM%2FXK%2FUF7kQJkIC4tr4snCgIu96vZq2jMD51JyAiEAqzuuoJPtFfzn185FlIZ1VY3uRIfJ0ubZNKrl5UMVaJ0qqQII4P%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAEGgw5OTAyMjM5MDY1NjMiDEiNGSnBnKkpvG6sVyr9AXHoCgaVG5O4RpU1IrRXVp6KKbEomvxVoeDPXPNirIlOZSDhgAqYAVNQBXCslQ7ZFYYUAIT7fDxXKXHGR7NOnyIPFfS95K%2F4UUCwCiDpY%2BmJBsQMbqwT082glNTxphiCuzyqGaAVXl4h93OwPgEWQZAUslVBPFhREHJdlJpuqWqVmINKbB4nyjXgbE%2BHIM0Obguv7HVVvkzWIpZmmOKxDu%2BDrRMImLF3qXeKH%2FAnLc5T5%2FCbZueQDOrKV%2B7nKLfh905%2By5bOFEHqtE42YXhFTKzr3C8oW7OlkR7qmew8Iq8amui8yxBHg8qqkUr9ByMeP8YqTAb4NUJEwFZqgwsw4%2BDVxwY6nQEO7Vk%2FOERbIWJUeig7Bvs%2FTG38kPhPVRhhzSJqLjg57TerL454qRByXo8zdRGlDa7uyMOdlTzaAdCjgLxelD61XU9EAonHpwDnK6hnkrFqI5YM3POrnUjoc%2FhXvS0jyl6eDwmz4dDjseQTOnbv4%2F%2BY2jnOwFVCmyZb61RSV4%2F2sr8FtDIZJaM6OAH7jvlQC2kXYWbLdWsdSfbrE%2BvX&X-Amz-SignedHeaders=host&X-Amz-Signature=0d330868f3b04179acdd05fa6e0fd85f3ad753550762408c061bd60cf81a0713
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