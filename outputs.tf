output "oncall_user_group_lookup_id" {
  description = "Map of id values across all oncall_user_group_lookup, keyed the same as var.oncall_user_group_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_oncall_user_group.oncall_user_group_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oncall_user_group_lookup_slack_handle" {
  description = "Map of slack_handle values across all oncall_user_group_lookup, keyed the same as var.oncall_user_group_lookup except keys with no slack_handle are omitted"
  value       = { for k, v in data.grafana_oncall_user_group.oncall_user_group_lookup : k => v.slack_handle if v.slack_handle != null && length(v.slack_handle) > 0 }
}
output "oncall_user_group_lookup_slack_id" {
  description = "Map of slack_id values across all oncall_user_group_lookup, keyed the same as var.oncall_user_group_lookup except keys with no slack_id are omitted"
  value       = { for k, v in data.grafana_oncall_user_group.oncall_user_group_lookup : k => v.slack_id if v.slack_id != null && length(v.slack_id) > 0 }
}

