variable "synchronization_jobs" {
  description = <<EOT
Map of synchronization_jobs, attributes below
Required:
    - service_principal_id
    - template_id
Optional:
    - enabled
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    service_principal_id = string
    template_id          = string
    enabled              = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.synchronization_jobs : (
        can(regex("^(/[^/]+/[^/]+)+$", v.service_principal_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
}

