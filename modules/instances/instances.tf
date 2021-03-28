terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"

  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "default" {
  name         = "tf-instance-1"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

resource "google_compute_instance" "default" {
  name         = "tf-instance-2"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
