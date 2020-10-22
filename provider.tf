provider "google" {
  credentials = file(var.gcp_auth_file)
  project = var.project
  region  = var.region
  zone    = var.zone
}
