output "synchronization_jobs_id" {
  description = "Map of id values across all synchronization_jobs, keyed the same as var.synchronization_jobs"
  value       = { for k, v in azuread_synchronization_job.synchronization_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synchronization_jobs_enabled" {
  description = "Map of enabled values across all synchronization_jobs, keyed the same as var.synchronization_jobs"
  value       = { for k, v in azuread_synchronization_job.synchronization_jobs : k => v.enabled if v.enabled != null }
}
output "synchronization_jobs_schedule" {
  description = "Map of schedule values across all synchronization_jobs, keyed the same as var.synchronization_jobs"
  value       = { for k, v in azuread_synchronization_job.synchronization_jobs : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "synchronization_jobs_service_principal_id" {
  description = "Map of service_principal_id values across all synchronization_jobs, keyed the same as var.synchronization_jobs"
  value       = { for k, v in azuread_synchronization_job.synchronization_jobs : k => v.service_principal_id if v.service_principal_id != null && length(v.service_principal_id) > 0 }
}
output "synchronization_jobs_template_id" {
  description = "Map of template_id values across all synchronization_jobs, keyed the same as var.synchronization_jobs"
  value       = { for k, v in azuread_synchronization_job.synchronization_jobs : k => v.template_id if v.template_id != null && length(v.template_id) > 0 }
}

