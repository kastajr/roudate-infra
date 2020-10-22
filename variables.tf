variable "project" { 
  type    = string
  default = "Roudate"
}

variable "network" {
  type    = string
  default = "roudate-network"
}

variable "web_instance_count" {
  type    = number
  default = 1
}

variable "credentials_file" { }

variable "region" {
  default = "europe-west2"
}

variable "zone" {
  default = "europe-west2-c"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "image_id" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2004-lts" 
}

variable "machine_types" {
  type    = map
  default = {
    dev  = "e2-micro"
  }
}