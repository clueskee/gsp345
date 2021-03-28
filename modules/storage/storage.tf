provider "google" {
  project     = "qwiklabs-gcp-00-99e3cfd38f35"
  region      = "us-central-1"
}

resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-00-99e3cfd38f35"
  location    = "US"
}