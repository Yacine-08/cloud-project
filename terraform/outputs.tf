output "cloud_run_service_name" {
  description = "Nom du service Cloud Run"
  value       = module.cloud_run.service_name
}

output "cloud_run_service_url" {
  description = "URL du service Cloud Run"
  value       = module.cloud_run.service_uri
}

output "scheduler_job_name" {
  description = "Nom du job Cloud Scheduler"
  value       = module.cloud_scheduler.job_name
}