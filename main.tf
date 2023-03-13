resource "tfe_organization" "this" {
  name  = var.organization_name
  email = var.organization_email
}

resource "tfe_project" "this" {
  organization = tfe_organization.this.name
  name         = var.project_name
}
