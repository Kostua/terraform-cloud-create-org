resource "tfe_organization" "this" {
  name                    = var.organization_name
  email                   = var.organization_email
  cost_estimation_enabled = var.cost_estimation_enabled != null ? var.cost_estimation_enabled : false
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
  auto_apply        = var.auto_apply
  terraform_version = var.terraform_version
  depends_on        = [tfe_project.this]
}



resource "tfe_variable_set" "this" {
  name         = "Project Varset"
  description  = "Variable set applied to all workspaces in project"
  global       = true
  organization = tfe_organization.this.name
}

resource "tfe_variable" "aws_access_key" {
  key             = "AWS_ACCESS_KEY_ID"
  value           = var.aws_access_key != null ? 1 : 0
  category        = "env"
  sensitive       = true
  hcl             = false
  variable_set_id = tfe_variable_set.this.id
}

resource "tfe_variable" "aws_secret_key" {
  key             = "AWS_SECRET_ACCESS_KEY"
  value           = var.aws_secret_key != null ? 1 : 0
  category        = "env"
  sensitive       = true
  hcl             = false
  variable_set_id = tfe_variable_set.this.id
}

resource "tfe_variable" "aws_region" {
  key             = "AWS_REGION"
  value           = var.aws_region
  category        = "env"
  sensitive       = false
  hcl             = false
  variable_set_id = tfe_variable_set.this.id
}
