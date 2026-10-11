resource "cloudflare_registrar_domain" "registrar_domains" {
  for_each = var.registrar_domains

  account_id  = each.value.account_id
  domain_name = each.value.domain_name
  auto_renew  = each.value.auto_renew
  locked      = each.value.locked
  privacy     = each.value.privacy
}

