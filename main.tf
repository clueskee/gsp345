module "instances" {
  source = "./modules/instances"

  name       = var.name
  project_id = var.project_id

  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age        = 365
      with_state = "ANY"
    }
  }]
}
module "storage" {
  source = "./modules/storage"

  name       = var.name
  project_id = var.project_id

  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age        = 365
      with_state = "ANY"
    }
  }]
}
