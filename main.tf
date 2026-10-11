data "grafana_oncall_user_group" "oncall_user_group_lookup" {
  for_each = var.oncall_user_group_lookup

  slack_handle = each.value.slack_handle
}

