variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "labels" {
  description = "Labels communs pour les ressources"
  type        = map(string)
  default     = {}
}

variable "job_name" {
  description = "Nom du job Cloud Scheduler"
  type        = string

  validation {
    condition     = length(var.job_name) > 0 && can(regex("^[a-z0-9-]+$", var.job_name))
    error_message = "Le nom du job doit contenir uniquement des minuscules, chiffres et tirets."
  }
}

variable "location" {
  description = "Région du job"
  type        = string

  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]$", var.location))
    error_message = "La région du job doit être au format GCP valide (ex: us-central1)."
  }
}

variable "schedule" {
  description = "Expression cron du job"
  type        = string

  validation {
    condition     = can(regex("^([0-9*,-/]+[ ]){4}[0-9*,-/]+$", var.schedule))
    error_message = "L'expression Cron doit comporter 5 champs valides (ex: '0 * * * *')."
  }
}

variable "time_zone" {
  description = "Fuseau horaire du job"
  type        = string
  default     = "UTC"

  validation {
    condition     = length(var.time_zone) > 0
    error_message = "Le fuseau horaire ne peut pas être vide."
  }
}

variable "target_uri" {
  description = "URL appelée par Cloud Scheduler"
  type        = string

  validation {
    condition     = can(regex("^https?://", var.target_uri))
    error_message = "L'URL cible doit être une adresse HTTP ou HTTPS valide."
  }
}

variable "http_method" {
  description = "Méthode HTTP utilisée par le job"
  type        = string
  default     = "GET"

  validation {
    condition     = contains(["GET", "POST", "PUT", "DELETE", "HEAD", "PATCH"], var.http_method)
    error_message = "La méthode HTTP doit être une méthode valide : GET, POST, PUT, DELETE, HEAD ou PATCH."
  }
}