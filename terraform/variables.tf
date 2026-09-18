variable "project_id" {
  description = "Identifiant du projet GCP"
  type        = string

  validation {
    condition     = length(var.project_id) > 3 && can(regex("^[a-z0-9-]+$", var.project_id))
    error_message = "L'ID du projet doit contenir au moins 4 caractères uniquement en minuscules, chiffres et tirets"
  }
}

variable "environment" {
  type        = string
  description = "Environnement de déploiement"
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "L'environnement doit être 'dev', 'staging' ou 'prod'"
  }
}

variable "region" {
  description = "Région GCP utilisée pour les ressources"
  type        = string
  default     = "us-central1"

  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]$", var.region))
    error_message = "La région doit être au format GCP valide (europe-west1, us-central1,...)"
  }
}

variable "zone" {
  description = "Zone GCP utilisée pour les ressources"
  type        = string
  default     = "us-central1-a"

  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]-[a-z]$", var.zone))
    error_message = "La zone doit être au format GCP valide (us-central1-a, europe-west1-b,...)"
  }
}

variable "gcp_endpoint" {
  description = "Endpoint local du provider GCP Floci"
  type        = string
  default     = "http://localhost:4588/"

  validation {
    condition     = can(regex("^https?://", var.gcp_endpoint))
    error_message = "L'endpoint GCP doit commencer par http:// ou https://"
  }
}

variable "cloud_run_image" {
  description = "Image Docker utilisée par Cloud Run"
  type        = string
  default     = "gcr.io/cloudrun/hello"

  validation {
    condition     = length(var.cloud_run_image) > 0
    error_message = "L'image Docker Cloud Run ne peut pas être vide"
  }
}

variable "cloud_run_container_port" {
  description = "Port exposé par le conteneur Cloud Run"
  type        = number
  default     = 8080

  validation {
    condition     = var.cloud_run_container_port > 0 && var.cloud_run_container_port <= 65535
    error_message = "Le port du conteneur doit être un entier valide compris entre 1 et 65535"
  }
}

variable "cloud_run_location" {
  description = "Région du service Cloud Run"
  type        = string
  default     = "us-central1"

  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]$", var.cloud_run_location))
    error_message = "La région Cloud Run doit être au format GCP valide"
  }
}

variable "scheduler_location" {
  description = "Région du job Cloud Scheduler"
  type        = string
  default     = "us-central1"

  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]$", var.scheduler_location))
    error_message = "La région Scheduler doit être au format GCP valide (ex: us-central1)"
  }
}

variable "scheduler_schedule" {
  description = "Expression cron du job Cloud Scheduler"
  type        = string
  default     = "0 * * * *"

  validation {
    condition     = can(regex("^([0-9*,-/]+[ ]){4}[0-9*,-/]+$", var.scheduler_schedule))
    error_message = "L'expression Cron doit comporter 5 champs valides"
  }
}

variable "scheduler_time_zone" {
  description = "Fuseau horaire du job Cloud Scheduler"
  type        = string
  default     = "UTC"

  validation {
    condition     = length(var.scheduler_time_zone) > 0
    error_message = "Le fuseau horaire du Scheduler ne peut pas être vide"
  }
}

variable "scheduler_target_uri" {
  description = "URL appelée par Cloud Scheduler"
  type        = string
  default     = ""

  validation {
    condition     = var.scheduler_target_uri == "" || can(regex("^https?://", var.scheduler_target_uri))
    error_message = "L'URL cible du Scheduler doit être vide ou commencer par http:// ou https://"
  }
}