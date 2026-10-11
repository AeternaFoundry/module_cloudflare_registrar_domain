variable "registrar_domains" {
  description = <<EOT
Map of registrar_domains, attributes below
Required:
    - account_id
    - domain_name
Optional:
    - auto_renew
    - locked
    - privacy
EOT

  type = map(object({
    account_id  = string
    domain_name = string
    auto_renew  = optional(bool)
    locked      = optional(bool)
    privacy     = optional(bool)
  }))
}

