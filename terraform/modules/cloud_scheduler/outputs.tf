output "job_name" {
  description = "Nom du job Cloud Scheduler"
  value       = google_cloud_scheduler_job.cloud_scheduler.name
}

output "job_id" {
  description = "ID du job Cloud Scheduler"
  value       = google_cloud_scheduler_job.cloud_scheduler.id
}

output "schedule" {
  description = "Expression cron du job"
  value       = google_cloud_scheduler_job.cloud_scheduler.schedule
}