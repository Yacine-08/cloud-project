output "service_name" {
  description = "Nom du service Cloud Run"
  value       = google_cloud_run_v2_service.cloud_run.name
}

output "service_uri" {
  description = "URL du service Cloud Run"
  value       = google_cloud_run_v2_service.cloud_run.uri
}

output "service_id" {
  description = "ID de la ressource Cloud Run"
  value       = google_cloud_run_v2_service.cloud_run.id
}