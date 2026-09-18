module "cloud_run" {
  source = "./modules/cloud_run"

  project_id = local.project_id
  region     = local.region

  service_name = local.cloud_run_name
  image       = var.cloud_run_image
  location    = var.cloud_run_location
  container_port = var.cloud_run_container_port

  labels = local.common_labels
}

module "cloud_scheduler" {
  source = "./modules/cloud_scheduler"

  project_id = local.project_id

  job_name   = local.scheduler_name
  location   = var.scheduler_location
  schedule   = var.scheduler_schedule
  time_zone  = var.scheduler_time_zone
  target_uri = module.cloud_run.service_uri

  labels = local.common_labels
}