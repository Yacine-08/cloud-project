variable "service_name" {
  description = "Nom du service Cloud Run"
  type        = string
}

variable "location" {
  description = "Région du service Cloud Run"
  type        = string
}

variable "image" {
  description = "Image Docker utilisée par Cloud Run"
  type        = string
}

variable "container_port" {
  description = "Port exposé par le conteneur"
  type        = number
}

variable "environment_variables" {
  description = "Variables d'environnement du conteneur"
  type        = map(string)
  default     = {}
}

variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "region" {
  description = "Région GCP"
  type        = string
}

variable "labels" {
  description = "Labels communs pour les ressources"
  type        = map(string)
  default     = {}
}