variable "job_name" {
  description = "Nom du job"
  type        = string
}

variable "location" {
  description = "Région du job"
  type        = string
}

variable "schedule" {
  description = "Expression cron du job"
  type        = string
}

variable "time_zone" {
  description = "Fuseau horaire du job"
  type        = string
}

variable "target_uri" {
  description = "URL appelée par Cloud Scheduler"
  type        = string
}

variable "http_method" {
  description = "Méthode HTTP utilisée par le job"
  type        = string
  default     = "GET"
}

variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "labels" {
  description = "Labels communs pour les ressources"
  type        = map(string)
  default     = {}
}