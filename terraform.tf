terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 4.13.1"
    }
  }
}

# provider "okta" {
#   org_name       = var.environment.org_name
#   base_url       = var.environment.base_url
#   client_id      = var.environment.client_id
#   private_key_id = var.environment.private_key_id
#   private_key    = var.environment.private_key
#   scopes         = ["okta.schemas.read", "okta.schemas.manage", "okta.apps.manage", "okta.apps.read", "okta.groups.manage", "okta.groups.read", "okta.policies.manage", "okta.policies.read", "okta.profileMappings.manage", "okta.profileMappings.read"]
# }


provider "okta" {
  org_name  = var.environment.org_name
  base_url  = var.environment.base_url
  api_token = var.environment.api_token
}
