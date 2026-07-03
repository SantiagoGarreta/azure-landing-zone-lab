output "resource_group_name" {
  description = "Name of the Azure Resource Group created for the dev environment."
  value       = azurerm_resource_group.main.name
}

output "resource_group_id" {
  description = "ID of the Azure Resource Group created for the dev environment."
  value       = azurerm_resource_group.main.id
}

output "location" {
  description = "Azure region used for the dev environment deployment."
  value       = azurerm_resource_group.main.location
}

output "common_tags" {
  description = "Effective tags applied to the Resource Group."
  value       = local.common_tags
}
