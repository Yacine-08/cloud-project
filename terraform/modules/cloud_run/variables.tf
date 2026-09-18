variable "project_id" {
  description = "ID du projet GCP"
  type        = string

  validation {
    condition     = length(var.project_id) > 3 && can(regex("^[a-z0-9-]+$", var.project_id))
    error_message = "L'ID du projet doit contenir au moins 4 caractères uniquement en minuscules, chiffres et tirets."
  }
}

variable "region" {
  description = "Région GCP"
  type        = string

  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]$", var.region))
    error_message = "La région doit être au format GCP valide (ex: us-central1)."
  }
}

variable "service_name" {
  description = "Nom du service Cloud Run"
  type        = string

  validation {
    condition     = length(var.service_name) > 0 && can(regex("^[a-z0-9-]+$", var.service_name))
    error_message = "Le nom du service Cloud Run doit contenir uniquement des minuscules, chiffres et tirets."
  }
}

variable "location" {
  description = "Région du service Cloud Run"
  type        = string

  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]$", var.location))
    error_message = "La région du service Cloud Run doit être au format GCP valide (ex: us-central1)."
  }
}

variable "image" {
  description = "Image Docker utilisée par Cloud Run"
  type        = string

  validation {
    condition     = length(var.image) > 0
    error_message = "L'image Docker ne peut pas être vide."
  }
}

variable "container_port" {
  description = "Port exposé par le conteneur"
  type        = number
  default     = 8080

  validation {
    condition     = var.container_port > 0 && var.container_port <= 65535
    error_message = "Le port du conteneur doit être compris entre 1 et 65535."
  }
}

variable "labels" {
  description = "Labels communs pour les ressources"
  type        = map(string)
  default     = {}
}

variable "environment_variables" {
  description = "Variables d'environnement du conteneur"
  type        = map(string)
  default     = {}
}