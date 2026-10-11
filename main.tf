data "elasticstack_elasticsearch_ingest_processor_user_agent" "elasticsearch_ingest_processor_user_agent_lookup" {
  for_each = var.elasticsearch_ingest_processor_user_agent_lookup

  field               = each.value.field
  description         = each.value.description
  extract_device_type = each.value.extract_device_type
  if                  = each.value.if
  ignore_failure      = each.value.ignore_failure
  ignore_missing      = each.value.ignore_missing
  on_failure          = each.value.on_failure
  properties          = each.value.properties
  regex_file          = each.value.regex_file
  tag                 = each.value.tag
  target_field        = each.value.target_field
}

