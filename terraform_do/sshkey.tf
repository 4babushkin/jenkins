
resource "digitalocean_ssh_key" "babushkin" {
  name       = "appuser"
  public_key = "${file(var.public_key_path)}"
}
resource "digitalocean_ssh_key" "rebrain" {
  name       = "rebrain"
  public_key = "${file(var.public_rebrain_key_path)}"
}
