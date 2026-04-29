# variables.tf root

variable "lab_subscription_id" {
  description = "The subscription ID for the lab environment."
  type        = string
}

variable "lab_tenant_id" {
  description = "The tenant ID for the lab environment."
  type        = string
}

variable "lab_client_id" {
  description = "The client ID for the lab environment."
  type        = string
}

variable "lab_client_secret" {
  description = "The client secret for the lab environment."
  type        = string
}

variable "free_subscription_id" {
  description = "The subscription ID for the free tier environment."
  type        = string
}

variable "free_tenant_id" {
  description = "The tenant ID for the free tier environment."
  type        = string
}

variable "free_client_id" {
  description = "The client ID for the free tier environment."
  type        = string
}

variable "free_client_secret" {
  description = "The client secret for the free tier environment."
  type        = string
}
