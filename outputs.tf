output "backup_vault_policies_id" {
  description = "Map of id values across all backup_vault_policies, keyed the same as var.backup_vault_policies"
  value       = { for k, v in aws_backup_vault_policy.backup_vault_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_vault_policies_backup_vault_arn" {
  description = "Map of backup_vault_arn values across all backup_vault_policies, keyed the same as var.backup_vault_policies"
  value       = { for k, v in aws_backup_vault_policy.backup_vault_policies : k => v.backup_vault_arn if v.backup_vault_arn != null && length(v.backup_vault_arn) > 0 }
}
output "backup_vault_policies_backup_vault_name" {
  description = "Map of backup_vault_name values across all backup_vault_policies, keyed the same as var.backup_vault_policies"
  value       = { for k, v in aws_backup_vault_policy.backup_vault_policies : k => v.backup_vault_name if v.backup_vault_name != null && length(v.backup_vault_name) > 0 }
}
output "backup_vault_policies_policy" {
  description = "Map of policy values across all backup_vault_policies, keyed the same as var.backup_vault_policies"
  value       = { for k, v in aws_backup_vault_policy.backup_vault_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "backup_vault_policies_region" {
  description = "Map of region values across all backup_vault_policies, keyed the same as var.backup_vault_policies"
  value       = { for k, v in aws_backup_vault_policy.backup_vault_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

