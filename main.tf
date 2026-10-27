resource "azuread_synchronization_job" "synchronization_jobs" {
  for_each = var.synchronization_jobs

  service_principal_id = each.value.service_principal_id
  template_id          = each.value.template_id
  enabled              = each.value.enabled

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

