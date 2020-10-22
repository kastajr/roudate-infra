resource "google_compute_instance" "vm_instance" {
  name         = "roudate-instance"
  machine_type = var.machine_types[var.environment]
  tags         = ["dev"]
  
  boot_disk {
    initialize_params {
      image = var.image_id
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = var.network
  auto_create_subnetworks = "true"
}