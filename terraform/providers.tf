provider "google" {
  project = var.project_id
  region  = var.region

  service_usage_custom_endpoint    = "${var.gcp_endpoint}/v1/"
  resource_manager_custom_endpoint = "${var.gcp_endpoint}/v1/"
  cloud_scheduler_custom_endpoint  = "${var.gcp_endpoint}/v1/"
  cloud_run_v2_custom_endpoint     = "${var.gcp_endpoint}/v2/"

  credentials = fileexists("${path.module}/floci-credentials.json") ? file("${path.module}/floci-credentials.json") : null
}

