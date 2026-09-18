## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [google_cloud_scheduler_job.cloud_scheduler](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_scheduler_job) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | Méthode HTTP utilisée par le job | `string` | `"GET"` | no |
| <a name="input_job_name"></a> [job\_name](#input\_job\_name) | Nom du job Cloud Scheduler | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels communs pour les ressources | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | Région du job | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID du projet GCP | `string` | n/a | yes |
| <a name="input_schedule"></a> [schedule](#input\_schedule) | Expression cron du job | `string` | n/a | yes |
| <a name="input_target_uri"></a> [target\_uri](#input\_target\_uri) | URL appelée par Cloud Scheduler | `string` | n/a | yes |
| <a name="input_time_zone"></a> [time\_zone](#input\_time\_zone) | Fuseau horaire du job | `string` | `"UTC"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_job_id"></a> [job\_id](#output\_job\_id) | ID du job Cloud Scheduler |
| <a name="output_job_name"></a> [job\_name](#output\_job\_name) | Nom du job Cloud Scheduler |
| <a name="output_schedule"></a> [schedule](#output\_schedule) | Expression cron du job |
