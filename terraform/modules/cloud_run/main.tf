resource "google_cloud_run_v2_service" "cloud_run" {
  name     = var.service_name
  location = var.location

  template {
    containers {
      image = var.image

      ports {
        container_port = var.container_port
      }

      dynamic "env" {
        for_each = var.environment_variables

        content {
          name  = env.key
          value = env.value
        }
      }
    }
  }
}