variable "organization_name" {
  type        = string
  description = "Name of the organization"
}

variable "organization_email" {
  type        = string
  description = "Email of the organization"
}

variable "cost_estimation_enabled" {
  type        = bool
  description = "Whether cost estimation is enabled for this organization"
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
variable "auto_apply" {
  type        = bool
  description = "Whether to automatically apply changes when a Terraform plan is successful"
}

variable "aws_access_key" {
  type        = string
  description = "The AWS access key to use for authentication."
  default     = null
}

variable "aws_secret_key" {
  type        = string
  description = "The AWS secret key to use for authentication."
  default     = null
}

variable "aws_region" {
  type        = string
  description = "The AWS region to use for resources."
}
