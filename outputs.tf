output "data_loss_prevention_deidentify_templates_id" {
  description = "Map of id values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no id are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_loss_prevention_deidentify_templates_create_time" {
  description = "Map of create_time values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no create_time are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "data_loss_prevention_deidentify_templates_deidentify_config" {
  description = "Map of deidentify_config values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no deidentify_config are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => one(v.deidentify_config) if v.deidentify_config != null && length(v.deidentify_config) > 0 }
  sensitive   = true
}
output "data_loss_prevention_deidentify_templates_deletion_policy" {
  description = "Map of deletion_policy values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no deletion_policy are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "data_loss_prevention_deidentify_templates_description" {
  description = "Map of description values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no description are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_loss_prevention_deidentify_templates_display_name" {
  description = "Map of display_name values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no display_name are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "data_loss_prevention_deidentify_templates_name" {
  description = "Map of name values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no name are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_loss_prevention_deidentify_templates_parent" {
  description = "Map of parent values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no parent are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "data_loss_prevention_deidentify_templates_template_id" {
  description = "Map of template_id values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no template_id are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.template_id if v.template_id != null && length(v.template_id) > 0 }
}
output "data_loss_prevention_deidentify_templates_update_time" {
  description = "Map of update_time values across all data_loss_prevention_deidentify_templates, keyed the same as var.data_loss_prevention_deidentify_templates except keys with no update_time are omitted"
  value       = { for k, v in google_data_loss_prevention_deidentify_template.data_loss_prevention_deidentify_templates : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

