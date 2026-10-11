output "registrar_domains_account_id" {
  description = "Map of account_id values across all registrar_domains, keyed the same as var.registrar_domains except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_registrar_domain.registrar_domains : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "registrar_domains_auto_renew" {
  description = "Map of auto_renew values across all registrar_domains, keyed the same as var.registrar_domains except keys with no auto_renew are omitted"
  value       = { for k, v in cloudflare_registrar_domain.registrar_domains : k => v.auto_renew if v.auto_renew != null }
}
output "registrar_domains_domain_name" {
  description = "Map of domain_name values across all registrar_domains, keyed the same as var.registrar_domains except keys with no domain_name are omitted"
  value       = { for k, v in cloudflare_registrar_domain.registrar_domains : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "registrar_domains_locked" {
  description = "Map of locked values across all registrar_domains, keyed the same as var.registrar_domains except keys with no locked are omitted"
  value       = { for k, v in cloudflare_registrar_domain.registrar_domains : k => v.locked if v.locked != null }
}
output "registrar_domains_privacy" {
  description = "Map of privacy values across all registrar_domains, keyed the same as var.registrar_domains except keys with no privacy are omitted"
  value       = { for k, v in cloudflare_registrar_domain.registrar_domains : k => v.privacy if v.privacy != null }
}

