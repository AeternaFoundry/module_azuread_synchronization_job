variable "synchronization_jobs" {
  description = <<EOT
Map of synchronization_jobs, attributes below
Required:
    - service_principal_id
    - template_id
Optional:
    - enabled
EOT

  type = map(object({
    service_principal_id = string
    template_id          = string
    enabled              = optional(bool)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

