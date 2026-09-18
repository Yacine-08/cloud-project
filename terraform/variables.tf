variable "project_id" {
  description = "Identifiant du projet GCP"
  type        = string
}

variable "region" {
  description = "Région GCP utilisée pour les ressources"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone GCP utilisée pour les ressources"
  type        = string
  default     = "us-central1-a"
}

variable "gcp_endpoint" {
  description = "Endpoint local du provider GCP Floci"
  type        = string
  default     = "http://localhost:4588/"
}

variable "cloud_run_image" {
  description = "Image Docker utilisée par Cloud Run"
  type        = string
  default     = "gcr.io/cloudrun/hello"
}

variable "cloud_run_container_port" {
  description = "Port exposé par le conteneur Cloud Run"
  type        = number
  default     = 8080
}

variable "cloud_run_location" {
  description = "Région du service Cloud Run"
  type        = string
  default     = "us-central1"
}

variable "scheduler_location" {
  description = "Région du job Cloud Scheduler"
  type        = string
  default     = "us-central1"
}

variable "scheduler_schedule" {
  description = "Expression cron du job Cloud Scheduler"
  type        = string
  default     = "0 * * * *"
}

variable "scheduler_time_zone" {
  description = "Fuseau horaire du job Cloud Scheduler"
  type        = string
  default     = "UTC"
}

variable "scheduler_target_uri" {
  description = "URL appelée par Cloud Scheduler"
  type        = string
  default     = ""
}