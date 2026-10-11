variable "oncall_user_group_lookup" {
  description = <<EOT
Map of oncall_user_group_lookup, attributes below
Required:
    - slack_handle
EOT

  type = map(object({
    slack_handle = string
  }))
}

