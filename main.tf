resource "tfe_organization" "this" {
  name  = var.organization_name
  email = var.organization_email
}

resource "tfe_project" "this" {
  organization = tfe_organization.this.name
  name         = var.project_name
}

resource "tfe_workspace" "this" {
  for_each          = toset(var.workspaces)
  name              = each.value
  organization      = tfe_organization.this.name
  project_id        = tfe_project.this.id
  terraform_version = var.terraform_version
  depends_on        = [tfe_project.this]
}
