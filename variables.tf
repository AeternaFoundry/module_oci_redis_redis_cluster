variable "redis_redis_clusters" {
  description = <<EOT
Map of redis_redis_clusters, attributes below
Required:
    - compartment_id
    - display_name
    - node_count
    - node_memory_in_gbs
    - software_version
    - subnet_id
Optional:
    - backup_id
    - cluster_mode
    - defined_tags
    - freeform_tags
    - nsg_ids
    - oci_cache_config_set_id
    - primary_cluster_id
    - security_attributes
    - shard_count
    - import_from_object_storage_details (block):
        - bucket (required)
        - namespace (required)
        - objects (required, block):
            - object (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id          = string
    display_name            = string
    node_count              = number
    node_memory_in_gbs      = number
    software_version        = string
    subnet_id               = string
    backup_id               = optional(string)
    cluster_mode            = optional(string)
    defined_tags            = optional(map(string))
    freeform_tags           = optional(map(string))
    nsg_ids                 = optional(set(string))
    oci_cache_config_set_id = optional(string)
    primary_cluster_id      = optional(string)
    security_attributes     = optional(map(string))
    shard_count             = optional(number)
    import_from_object_storage_details = optional(object({
      bucket    = string
      namespace = string
      objects = list(object({
        object = string
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.redis_redis_clusters : (
        v.import_from_object_storage_details == null || (length(v.import_from_object_storage_details.objects) >= 1)
      )
    ])
    error_message = "Each objects list must contain at least 1 items"
  }
}

