variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable public_rebrain_key_path {
  # Описание переменной
  description = "Path to the public key Rebrain used for ssh access"
}

variable private_key_path {
  # Описание переменной
  description = "Path to the private key used for ssh access"
}
variable "do_token" {
  description = "DigitalOcean Personal Access Token"
}
variable rebrain_key_fingerprint {
  # Описание переменной
  description = "fingerprint key Rebrain used for ssh access"
}
variable my_key_fingerprint {
  # Описание переменной
  description = "fingerprint key my used for ssh access"
}
variable "devs" {
  type = "list"
  default = ["babushkin"]
}

variable image {
  # Описание переменной
  description = "image of OS"
  default = "ubuntu-18-04-x64"
}

variable size  {
  # Описание переменной
  description = "size of droplet of OS"
  default = "s-1vcpu-1gb"
}
