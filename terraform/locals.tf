locals {
  project_id = var.project_id
  region     = var.region
  zone       = var.zone

  common_labels = {
    project     = "floci-terraform"
    environment = "local"
    managed_by  = "terraform"
  }

  cloud_run_name = "floci-cloud-run"

  scheduler_name = "floci-cloud-scheduler"
}