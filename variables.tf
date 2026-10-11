variable "elasticsearch_ingest_processor_user_agent_lookup" {
  description = <<EOT
Map of elasticsearch_ingest_processor_user_agent_lookup, attributes below
Required:
    - field
Optional:
    - description
    - extract_device_type
    - if
    - ignore_failure
    - ignore_missing
    - on_failure
    - properties
    - regex_file
    - tag
    - target_field
EOT

  type = map(object({
    field               = string
    description         = optional(string)
    extract_device_type = optional(bool)
    if                  = optional(string)
    ignore_failure      = optional(bool)
    ignore_missing      = optional(bool)
    on_failure          = optional(list(string))
    properties          = optional(set(string))
    regex_file          = optional(string)
    tag                 = optional(string)
    target_field        = optional(string)
  }))
}

