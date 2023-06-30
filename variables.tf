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

variable "workspaces" {
  type        = list(string)
  description = "The list of workspace names"
}

variable "terraform_version" {
  type        = string
  description = "The version of Terraform to use for this workspace"
}
