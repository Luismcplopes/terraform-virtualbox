output "IPAddr" {
#  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
  value = virtualbox_vm.node.network_adapter.0.ipv4_address
}