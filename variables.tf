variable "name" {
  description = "Name of the Linux function app. Must be globally unique."
  type        = string
}

variable "service_plan_name" {
  description = "Name of the service plan hosting the function app."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account backing the function app. Globally unique, 3-24 lowercase chars."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group in which to create the resources."
  type        = string
}

variable "location" {
  description = "Azure region in which to create the resources."
  type        = string
}

variable "sku_name" {
  description = "SKU of the service plan, e.g. Y1 (consumption) or EP1 (elastic premium)."
  type        = string
  default     = "Y1"
}

variable "python_version" {
  description = "Python runtime version for the function app, e.g. 3.11. Null selects another stack via app settings."
  type        = string
  default     = "3.11"
}

variable "https_only" {
  description = "Whether the function app redirects all HTTP traffic to HTTPS."
  type        = bool
  default     = true
}

variable "app_settings" {
  description = "Map of application settings exposed to the function app as environment variables."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Map of tags applied to the resources."
  type        = map(string)
  default     = {}
}
