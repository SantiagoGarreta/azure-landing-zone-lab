locals {
  normalized_project_name = lower(trimspace(var.project_name))
  normalized_environment  = lower(trimspace(var.environment))
  normalized_location     = lower(replace(trimspace(var.location), " ", ""))

  location_short_map = {
    eastus      = "eus"
    eastus2     = "eus2"
    centralus   = "cus"
    westus      = "wus"
    westus2     = "wus2"
    westeurope  = "weu"
    northeurope = "neu"
  }

  location_short = lookup(
    local.location_short_map,
    local.normalized_location,
    local.normalized_location,
  )

  resource_group_name = "rg-${local.normalized_project_name}-${local.normalized_environment}-${local.location_short}"

  default_tags = {
    environment = local.normalized_environment
    managed_by  = "terraform"
    owner       = trimspace(var.owner)
    cost_center = trimspace(var.cost_center)
    project     = local.normalized_project_name
    repository  = "azure-landing-zone-lab"
  }

  common_tags = merge(local.default_tags, var.tags)
}
