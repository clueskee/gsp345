resource "google_storage_bucket" "bucket" {
  name               = var.name
  project            = var.project_id
  location           = "us-east1"
}