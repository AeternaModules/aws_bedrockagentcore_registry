output "bedrockagentcore_registries_approval_configuration" {
  description = "Map of approval_configuration values across all bedrockagentcore_registries, keyed the same as var.bedrockagentcore_registries"
  value       = { for k, v in aws_bedrockagentcore_registry.bedrockagentcore_registries : k => v.approval_configuration if v.approval_configuration != null && length(v.approval_configuration) > 0 }
}
output "bedrockagentcore_registries_authorizer_configuration" {
  description = "Map of authorizer_configuration values across all bedrockagentcore_registries, keyed the same as var.bedrockagentcore_registries"
  value       = { for k, v in aws_bedrockagentcore_registry.bedrockagentcore_registries : k => v.authorizer_configuration if v.authorizer_configuration != null && length(v.authorizer_configuration) > 0 }
}
output "bedrockagentcore_registries_authorizer_type" {
  description = "Map of authorizer_type values across all bedrockagentcore_registries, keyed the same as var.bedrockagentcore_registries"
  value       = { for k, v in aws_bedrockagentcore_registry.bedrockagentcore_registries : k => v.authorizer_type if v.authorizer_type != null && length(v.authorizer_type) > 0 }
}
output "bedrockagentcore_registries_description" {
  description = "Map of description values across all bedrockagentcore_registries, keyed the same as var.bedrockagentcore_registries"
  value       = { for k, v in aws_bedrockagentcore_registry.bedrockagentcore_registries : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagentcore_registries_name" {
  description = "Map of name values across all bedrockagentcore_registries, keyed the same as var.bedrockagentcore_registries"
  value       = { for k, v in aws_bedrockagentcore_registry.bedrockagentcore_registries : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagentcore_registries_region" {
  description = "Map of region values across all bedrockagentcore_registries, keyed the same as var.bedrockagentcore_registries"
  value       = { for k, v in aws_bedrockagentcore_registry.bedrockagentcore_registries : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_registries_registry_arn" {
  description = "Map of registry_arn values across all bedrockagentcore_registries, keyed the same as var.bedrockagentcore_registries"
  value       = { for k, v in aws_bedrockagentcore_registry.bedrockagentcore_registries : k => v.registry_arn if v.registry_arn != null && length(v.registry_arn) > 0 }
}
output "bedrockagentcore_registries_registry_id" {
  description = "Map of registry_id values across all bedrockagentcore_registries, keyed the same as var.bedrockagentcore_registries"
  value       = { for k, v in aws_bedrockagentcore_registry.bedrockagentcore_registries : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}

