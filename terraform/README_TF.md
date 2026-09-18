## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_cloud_run"></a> [cloud\_run](#module\_cloud\_run) | ./modules/cloud_run | n/a |
| <a name="module_cloud_scheduler"></a> [cloud\_scheduler](#module\_cloud\_scheduler) | ./modules/cloud_scheduler | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_cloud_run_container_port"></a> [cloud\_run\_container\_port](#input\_cloud\_run\_container\_port) | Port exposé par le conteneur Cloud Run | `number` | `8080` | no |
| <a name="input_cloud_run_image"></a> [cloud\_run\_image](#input\_cloud\_run\_image) | Image Docker utilisée par Cloud Run | `string` | `"gcr.io/cloudrun/hello"` | no |
| <a name="input_cloud_run_location"></a> [cloud\_run\_location](#input\_cloud\_run\_location) | Région du service Cloud Run | `string` | `"us-central1"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environnement de déploiement | `string` | `"dev"` | no |
| <a name="input_gcp_endpoint"></a> [gcp\_endpoint](#input\_gcp\_endpoint) | Endpoint local du provider GCP Floci | `string` | `"http://localhost:4588/"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Identifiant du projet GCP | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Région GCP utilisée pour les ressources | `string` | `"us-central1"` | no |
| <a name="input_scheduler_location"></a> [scheduler\_location](#input\_scheduler\_location) | Région du job Cloud Scheduler | `string` | `"us-central1"` | no |
| <a name="input_scheduler_schedule"></a> [scheduler\_schedule](#input\_scheduler\_schedule) | Expression cron du job Cloud Scheduler | `string` | `"0 * * * *"` | no |
| <a name="input_scheduler_target_uri"></a> [scheduler\_target\_uri](#input\_scheduler\_target\_uri) | URL appelée par Cloud Scheduler | `string` | `""` | no |
| <a name="input_scheduler_time_zone"></a> [scheduler\_time\_zone](#input\_scheduler\_time\_zone) | Fuseau horaire du job Cloud Scheduler | `string` | `"UTC"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Zone GCP utilisée pour les ressources | `string` | `"us-central1-a"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_cloud_run_service_name"></a> [cloud\_run\_service\_name](#output\_cloud\_run\_service\_name) | Nom du service Cloud Run |
| <a name="output_cloud_run_service_url"></a> [cloud\_run\_service\_url](#output\_cloud\_run\_service\_url) | URL du service Cloud Run |
| <a name="output_scheduler_job_name"></a> [scheduler\_job\_name](#output\_scheduler\_job\_name) | Nom du job Cloud Scheduler |
