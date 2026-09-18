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
| [google_cloud_run_v2_service.cloud_run](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | Port exposé par le conteneur | `number` | `8080` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | Variables d'environnement du conteneur | `map(string)` | `{}` | no |
| <a name="input_image"></a> [image](#input\_image) | Image Docker utilisée par Cloud Run | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels communs pour les ressources | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | Région du service Cloud Run | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID du projet GCP | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Région GCP | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Nom du service Cloud Run | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_service_id"></a> [service\_id](#output\_service\_id) | ID de la ressource Cloud Run |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Nom du service Cloud Run |
| <a name="output_service_uri"></a> [service\_uri](#output\_service\_uri) | URL du service Cloud Run |
