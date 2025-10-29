resource "virtualbox_vm" "node" {
  name   = var.vm_name
  image  = var.image
  cpus   = var.cpu_counts
  memory = var.memory
 
  network_adapter {
    type           = "bridged"
    #var.network_adapter_type
    host_interface = "Realtek PCIe GbE Family Controller"
    # hostonly "VirtualBox Host-Only Ethernet Adapter"
    # bridged  "Realtek PCIe GbE Family Controller"
    #"Intel(R) I211 Gigabit Network Connection"
  }
}

resource "null_resource" "ssh_docker" {
  # Other resource settings
  connection {
    type        = "ssh"
    user        = "vagrant"
    password = "vagrant"
    #private_key = file("/path/to/your/private/key.pem")
    host        = virtualbox_vm.node.network_adapter.0.ipv4_address
    }
  provisioner "file" {
  source      = "./60-static-ip.yaml"
  destination = "./60-static-ip.yaml"

  }
  provisioner "remote-exec" {
    inline = [
      "echo 'Hello, World'",
      "sudo apt-get update -y",
      "sudo apt-get install -y ca-certificates curl ipcalc dbus-user-session",
      "curl -fsSL https://test.docker.com -o test-docker.sh",
      "sudo sh test-docker.sh",
      "sudo usermod -aG docker vagrant",
      "echo install docker completed",
      "sudo docker run -d -ti --name stirling-pdf --restart unless-stopped -p 8888:8080 frooodle/s-pdf:latest",
      "echo install stirling-pdf complete",
      "sudo docker run  -d -ti --restart unless-stopped --name libre_speed -e PUID=1000 -e PGID=1000 -e TZ=Europe/London -v ./librespeed:/config -p 10101:80 lscr.io/linuxserver/librespeed:latest",
      "echo install librespeed complete",
      "sudo docker run -ti -d --name dozzle -v /var/run/docker.sock:/var/run/docker.sock -p 8383:8080 amir20/dozzle:latest",
      "echo install dozzle complete",
      "sudo docker run -d --name it-tools --restart unless-stopped -p 8080:80 ghcr.io/corentinth/it-tools:latest",
      "echo install it-tools complete",
      "sudo mv 60-static-ip.yaml /etc/netplan/00-static-ip.yaml",
      "sudo chmod 600 /etc/netplan/00-static-ip.yaml",
      "sudo chmod 600 /etc/netplan/01-netcfg.yaml",
      #"sudo rm -rf /etc/netplan/01-netcfg.yaml",
      "sudo netplan apply --config-file /etc/netplan/00-static-ip.yaml",
      "echo VM is completed"
    ]
  }
}
resource "null_resource" "ssh_docker2" {
  # Other resource settings
  connection {
    type        = "ssh"
    user        = "vagrant"
    password = "vagrant"
    #private_key = file("/path/to/your/private/key.pem")
    host        = "10.0.55.90"
    }
  provisioner "remote-exec" {
    inline = [
      "echo Alterar para IP fixo",
      "sudo rm -rf /etc/netplan/01-netcfg.yaml",
      "sudo netplan apply --config-file /etc/netplan/00-static-ip.yaml",
      "echo VM is completed"
    ]
  }
}
