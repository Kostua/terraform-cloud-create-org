variable "organization_name" {
  type        = string
  description = "Name of the organization"
}

variable "organization_email" {
  type        = string
  description = "Email of the organization"
}

variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "project_workspace_name" {
  type        = string
  description = "The name of the project workspace"
}

variable "terraform_version" {
  type        = string
  description = "The version of Terraform to use for this workspace"
}
