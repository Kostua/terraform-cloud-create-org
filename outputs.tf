# tfe_organization"
output "name" {
  description = "Name of the organization"
  value       = try(tfe_organization.this.name)
}

output "email" {
  description = "Email of the organization"
  value       = try(tfe_organization.this.email)
}


output "assessments_enforced" {
  description = "Assessments enforced of the organization"
  value       = try(tfe_organization.this.assessments_enforced)
}

output "collaborator_auth_policy" {
  description = "Collaborator auth policy of the organization"
  value       = try(tfe_organization.this.collaborator_auth_policy)
}
output "cost_estimation_enabled" {
  description = " Whether or not the cost estimation feature is enabled for all workspaces in the organization. Defaults to true. In a Terraform Cloud organization which does not have Teams & Governance features, this value is always false and cannot be changed. In Terraform Enterprise, Cost Estimation must also be enabled in Site Administration."
  value       = try(tfe_organization.this.cost_estimation_enabled)
}

output "owners_team_saml_role_id" {
  description = "The name of the owners team."
  value       = try(tfe_organization.this.owners_team_saml_role_id)
}

output "send_passing_statuses_for_untriggered_speculative_plans" {
  description = "Whether or not to send passing statuses for untriggered speculative plans."
  value       = try(tfe_organization.this.send_passing_statuses_for_untriggered_speculative_plans)
}

output "default_project_id" {
  description = "The ID of the default project."
  value       = try(tfe_organization.this.default_project_id)
}
