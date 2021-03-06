terraform {
  backend "gcs" {
    bucket  = "qwiklabs-gcp-00-99e3cfd38f35"
    prefix  = "terraform/state"
  }
}


module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "2.5.0"

    project_id   = "qwiklabs-gcp-00-99e3cfd38f35"
    network_name = "terraform-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-central1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-central1"
        }
        ]
}