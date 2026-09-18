variables {
  project_id = "floci-local"
}

# test 1 : vérification des noms et de la config pour l'environnement Dev
run "verify_dev_naming_and_config" {
  command = plan

  variables {
    environment        = "dev"
    scheduler_schedule = "*/5 * * * *"
  }

  assert {
    condition     = output.cloud_run_service_name == "floci-local-dev-cloud-run"
    error_message = "Le nom du service Cloud Run en Dev ne respecte pas la convention 'floci-local-dev-cloud-run'"
  }

  assert {
    condition     = output.scheduler_job_name == "floci-local-dev-scheduler"
    error_message = "Le nom du job Scheduler en Dev ne respecte pas la convention 'floci-local-dev-scheduler'"
  }
}

# test 2 : vérification des noms et de la config pour l'environnement Prod
run "verify_prod_naming_and_config" {
  command = plan

  variables {
    environment        = "prod"
    scheduler_schedule = "0 0 * * *"
  }

  assert {
    condition     = output.cloud_run_service_name == "floci-local-prod-cloud-run"
    error_message = "Le nom du service Cloud Run en Prod ne respecte pas la convention 'floci-local-prod-cloud-run'"
  }

  assert {
    condition     = output.scheduler_job_name == "floci-local-prod-scheduler"
    error_message = "Le nom du job Scheduler en Prod ne respecte pas la convention 'floci-local-prod-scheduler'"
  }
}