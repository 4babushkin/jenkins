output "ip" {
  value = "${digitalocean_droplet.www.ipv4_address}"
}
