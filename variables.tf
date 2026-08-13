variable "bedrockagentcore_registries" {
  description = <<EOT
Map of bedrockagentcore_registries, attributes below
Required:
    - name
Optional:
    - authorizer_type
    - description
    - region
    - approval_configuration (block):
        - auto_approval (optional)
    - authorizer_configuration (block):
        - custom_jwt_authorizer (optional, block):
            - allowed_audience (optional)
            - allowed_clients (optional)
            - allowed_scopes (optional)
            - allowed_workload_configuration (optional, block):
                - hosting_environment (optional, block):
                    - arn (required)
                - workload_identities (optional)
            - custom_claim (optional, block):
                - authorizing_claim_match_value (optional, block):
                    - claim_match_operator (required)
                    - claim_match_value (optional, block):
                        - match_value_string (optional)
                        - match_value_string_list (optional)
                - inbound_token_claim_name (required)
                - inbound_token_claim_value_type (required)
            - discovery_url (required)
            - private_endpoint (optional, block):
                - managed_vpc_resource (optional, block):
                    - endpoint_ip_address_type (required)
                    - routing_domain (optional)
                    - security_group_ids (optional)
                    - subnet_ids (required)
                    - tags (optional)
                    - vpc_identifier (required)
                - self_managed_lattice_resource (optional, block):
                    - resource_configuration_identifier (required)
            - private_endpoint_overrides (optional, block):
                - domain (required)
                - private_endpoint (optional, block):
                    - managed_vpc_resource (optional, block):
                        - endpoint_ip_address_type (required)
                        - routing_domain (optional)
                        - security_group_ids (optional)
                        - subnet_ids (required)
                        - tags (optional)
                        - vpc_identifier (required)
                    - self_managed_lattice_resource (optional, block):
                        - resource_configuration_identifier (required)
EOT

  type = map(object({
    name            = string
    authorizer_type = optional(string)
    description     = optional(string)
    region          = optional(string)
    approval_configuration = optional(list(object({
      auto_approval = optional(bool)
    })))
    authorizer_configuration = optional(list(object({
      custom_jwt_authorizer = optional(list(object({
        allowed_audience = optional(set(string))
        allowed_clients  = optional(set(string))
        allowed_scopes   = optional(set(string))
        allowed_workload_configuration = optional(list(object({
          hosting_environment = optional(list(object({
            arn = string
          })))
          workload_identities = optional(list(string))
        })))
        custom_claim = optional(list(object({
          authorizing_claim_match_value = optional(list(object({
            claim_match_operator = string
            claim_match_value = optional(list(object({
              match_value_string      = optional(string)
              match_value_string_list = optional(set(string))
            })))
          })))
          inbound_token_claim_name       = string
          inbound_token_claim_value_type = string
        })))
        discovery_url = string
        private_endpoint = optional(list(object({
          managed_vpc_resource = optional(list(object({
            endpoint_ip_address_type = string
            routing_domain           = optional(string)
            security_group_ids       = optional(set(string))
            subnet_ids               = set(string)
            tags                     = optional(map(string))
            vpc_identifier           = string
          })))
          self_managed_lattice_resource = optional(list(object({
            resource_configuration_identifier = string
          })))
        })))
        private_endpoint_overrides = optional(list(object({
          domain = string
          private_endpoint = optional(list(object({
            managed_vpc_resource = optional(list(object({
              endpoint_ip_address_type = string
              routing_domain           = optional(string)
              security_group_ids       = optional(set(string))
              subnet_ids               = set(string)
              tags                     = optional(map(string))
              vpc_identifier           = string
            })))
            self_managed_lattice_resource = optional(list(object({
              resource_configuration_identifier = string
            })))
          })))
        })))
      })))
    })))
  }))
}

