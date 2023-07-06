<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.4.6 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | >= 0.45.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_organization.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization) | resource |
| [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project) | resource |
| [tfe_project_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project_variable_set) | resource |
| [tfe_variable.aws_access_key](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.aws_region](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.aws_secret_key](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Whether to automatically apply changes when a Terraform plan is successful | `bool` | n/a | yes |
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | The AWS access key to use for authentication. | `string` | `null` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to use for resources. | `string` | n/a | yes |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | The AWS secret key to use for authentication. | `string` | `null` | no |
| <a name="input_cost_estimation_enabled"></a> [cost\_estimation\_enabled](#input\_cost\_estimation\_enabled) | Whether cost estimation is enabled for this organization | `bool` | n/a | yes |
| <a name="input_organization_email"></a> [organization\_email](#input\_organization\_email) | Email of the organization | `string` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Name of the organization | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project | `string` | n/a | yes |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | The version of Terraform to use for this workspace | `string` | n/a | yes |
| <a name="input_workspaces"></a> [workspaces](#input\_workspaces) | The list of workspace names | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_assessments_enforced"></a> [assessments\_enforced](#output\_assessments\_enforced) | Assessments enforced of the organization |
| <a name="output_collaborator_auth_policy"></a> [collaborator\_auth\_policy](#output\_collaborator\_auth\_policy) | Collaborator auth policy of the organization |
| <a name="output_cost_estimation_enabled"></a> [cost\_estimation\_enabled](#output\_cost\_estimation\_enabled) | Whether or not the cost estimation feature is enabled for all workspaces in the organization. Defaults to true. In a Terraform Cloud organization which does not have Teams & Governance features, this value is always false and cannot be changed. In Terraform Enterprise, Cost Estimation must also be enabled in Site Administration. |
| <a name="output_default_project_id"></a> [default\_project\_id](#output\_default\_project\_id) | The ID of the default project. |
| <a name="output_email"></a> [email](#output\_email) | Email of the organization |
| <a name="output_name"></a> [name](#output\_name) | Name of the organization |
| <a name="output_owners_team_saml_role_id"></a> [owners\_team\_saml\_role\_id](#output\_owners\_team\_saml\_role\_id) | The name of the owners team. |
| <a name="output_send_passing_statuses_for_untriggered_speculative_plans"></a> [send\_passing\_statuses\_for\_untriggered\_speculative\_plans](#output\_send\_passing\_statuses\_for\_untriggered\_speculative\_plans) | Whether or not to send passing statuses for untriggered speculative plans. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
