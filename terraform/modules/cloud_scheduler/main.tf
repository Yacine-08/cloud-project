resource "google_cloud_scheduler_job" "cloud_scheduler" {
  name      = var.job_name
  region    = var.location
  schedule  = var.schedule
  time_zone = var.time_zone

  http_target {
    uri         = var.target_uri
    http_method = var.http_method
    headers = {"User-Agent" = "Google-Cloud-Scheduler"}
  }
}