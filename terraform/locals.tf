locals {
  project_id = var.project_id
  region     = var.region
  zone       = var.zone

  # Préfixe dynamique base sur l'environnement
  name_prefix = "${var.project_id}-${var.environment}"
  common_labels = {
    project     = "var.project_id"
    environment = "var.environment"
    managed_by  = "terraform"
  }

  cloud_run_name = "${local.name_prefix}-cloud-run"

  scheduler_name = "${local.name_prefix}-scheduler"
}