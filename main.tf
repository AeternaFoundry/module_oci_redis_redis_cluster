resource "oci_redis_redis_cluster" "redis_redis_clusters" {
  for_each = var.redis_redis_clusters

  compartment_id          = each.value.compartment_id
  display_name            = each.value.display_name
  node_count              = each.value.node_count
  node_memory_in_gbs      = each.value.node_memory_in_gbs
  software_version        = each.value.software_version
  subnet_id               = each.value.subnet_id
  backup_id               = each.value.backup_id
  cluster_mode            = each.value.cluster_mode
  defined_tags            = each.value.defined_tags
  freeform_tags           = each.value.freeform_tags
  nsg_ids                 = each.value.nsg_ids
  oci_cache_config_set_id = each.value.oci_cache_config_set_id
  primary_cluster_id      = each.value.primary_cluster_id
  security_attributes     = each.value.security_attributes
  shard_count             = each.value.shard_count

  dynamic "import_from_object_storage_details" {
    for_each = each.value.import_from_object_storage_details != null ? [each.value.import_from_object_storage_details] : []
    content {
      bucket    = import_from_object_storage_details.value.bucket
      namespace = import_from_object_storage_details.value.namespace
      dynamic "objects" {
        for_each = import_from_object_storage_details.value.objects
        content {
          object = objects.value.object
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

