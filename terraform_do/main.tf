terraform {
  # Версия terraform
  required_version = ">=0.12,<0.13"
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "www" {
  image  = var.image
  name   = var.devs[0]
  region = "ams3"
  size   = var.size

  # disk = 25
  private_networking = true
  ssh_keys = [
    digitalocean_ssh_key.babushkin.fingerprint,
    # var.rebrain_key_fingerprint,
    digitalocean_ssh_key.rebrain.fingerprint
  ]

  provisioner "remote-exec" {
    connection {
      host        = digitalocean_droplet.www.ipv4_address
      user        = "root"
      type        = "ssh"
      private_key = file(var.private_key_path)
      timeout     = "2m"
    } 
    inline = [
      "echo \"root:${random_string.pass.id}\" | chpasswd",
      # "hostnamectl set-hostname ${var.devs,
      "sudo apt-get update",
    ]
  }

  provisioner "local-exec" {
    command = "echo \"${timestamp()}: ${digitalocean_droplet.www.ipv4_address} ${random_string.pass.id}\" >> devs.txt"
  }

}


# Create a new domain
resource "digitalocean_domain" "default" {
  name       = "babushkin.tk"
  # ip_address = digitalocean_droplet.www.ipv4_address
}

resource "digitalocean_record" "jenkins" {
  domain = digitalocean_domain.default.name
  type = "A"
  name = "jenkins"
  value = digitalocean_droplet.www.ipv4_address
}


output "domain" {
  value = digitalocean_record.jenkins.fqdn 
  # value = digitalocean_domain.default.id
}



resource "random_string" "pass" {
  length  = 16
  upper   = true
  lower   = true
  number  = true
  special = false
}
