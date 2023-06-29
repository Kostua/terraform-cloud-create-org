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
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization_email"></a> [organization\_email](#input\_organization\_email) | Email of the organization | `string` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Name of the organization | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project | `string` | n/a | yes |
| <a name="input_project_workspace_name"></a> [project\_workspace\_name](#input\_project\_workspace\_name) | The name of the project workspace | `string` | n/a | yes |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | The version of Terraform to use for this workspace | `string` | n/a | yes |

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
