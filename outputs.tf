output "id" {
  description = "ID of the Linux function app."
  value       = azurerm_linux_function_app.this.id
}

output "name" {
  description = "Name of the Linux function app."
  value       = azurerm_linux_function_app.this.name
}

output "default_hostname" {
  description = "Default hostname of the function app."
  value       = azurerm_linux_function_app.this.default_hostname
}

output "storage_account_name" {
  description = "Name of the storage account backing the function app."
  value       = azurerm_storage_account.this.name
}
