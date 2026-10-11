output "redis_redis_clusters_id" {
  description = "Map of id values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no id are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_redis_clusters_backup_id" {
  description = "Map of backup_id values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no backup_id are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.backup_id if v.backup_id != null && length(v.backup_id) > 0 }
}
output "redis_redis_clusters_cluster_mode" {
  description = "Map of cluster_mode values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no cluster_mode are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.cluster_mode if v.cluster_mode != null && length(v.cluster_mode) > 0 }
}
output "redis_redis_clusters_cluster_replication_topology" {
  description = "Map of cluster_replication_topology values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no cluster_replication_topology are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.cluster_replication_topology if v.cluster_replication_topology != null && length(v.cluster_replication_topology) > 0 }
}
output "redis_redis_clusters_cluster_role" {
  description = "Map of cluster_role values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no cluster_role are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.cluster_role if v.cluster_role != null && length(v.cluster_role) > 0 }
}
output "redis_redis_clusters_compartment_id" {
  description = "Map of compartment_id values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no compartment_id are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "redis_redis_clusters_defined_tags" {
  description = "Map of defined_tags values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no defined_tags are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "redis_redis_clusters_discovery_endpoint_ip_address" {
  description = "Map of discovery_endpoint_ip_address values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no discovery_endpoint_ip_address are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.discovery_endpoint_ip_address if v.discovery_endpoint_ip_address != null && length(v.discovery_endpoint_ip_address) > 0 }
}
output "redis_redis_clusters_discovery_fqdn" {
  description = "Map of discovery_fqdn values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no discovery_fqdn are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.discovery_fqdn if v.discovery_fqdn != null && length(v.discovery_fqdn) > 0 }
}
output "redis_redis_clusters_display_name" {
  description = "Map of display_name values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no display_name are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "redis_redis_clusters_freeform_tags" {
  description = "Map of freeform_tags values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "redis_redis_clusters_import_from_object_storage_details" {
  description = "Map of import_from_object_storage_details values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no import_from_object_storage_details are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => one(v.import_from_object_storage_details) if v.import_from_object_storage_details != null && length(v.import_from_object_storage_details) > 0 }
}
output "redis_redis_clusters_lifecycle_details" {
  description = "Map of lifecycle_details values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "redis_redis_clusters_node_collection" {
  description = "Map of node_collection values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no node_collection are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.node_collection if v.node_collection != null && length(v.node_collection) > 0 }
}
output "redis_redis_clusters_node_count" {
  description = "Map of node_count values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no node_count are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.node_count if v.node_count != null }
}
output "redis_redis_clusters_node_memory_in_gbs" {
  description = "Map of node_memory_in_gbs values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no node_memory_in_gbs are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.node_memory_in_gbs if v.node_memory_in_gbs != null }
}
output "redis_redis_clusters_nsg_ids" {
  description = "Map of nsg_ids values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no nsg_ids are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.nsg_ids if v.nsg_ids != null && length(v.nsg_ids) > 0 }
}
output "redis_redis_clusters_oci_cache_config_set_id" {
  description = "Map of oci_cache_config_set_id values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no oci_cache_config_set_id are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.oci_cache_config_set_id if v.oci_cache_config_set_id != null && length(v.oci_cache_config_set_id) > 0 }
}
output "redis_redis_clusters_primary_cluster_id" {
  description = "Map of primary_cluster_id values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no primary_cluster_id are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.primary_cluster_id if v.primary_cluster_id != null && length(v.primary_cluster_id) > 0 }
}
output "redis_redis_clusters_primary_endpoint_ip_address" {
  description = "Map of primary_endpoint_ip_address values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no primary_endpoint_ip_address are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.primary_endpoint_ip_address if v.primary_endpoint_ip_address != null && length(v.primary_endpoint_ip_address) > 0 }
}
output "redis_redis_clusters_primary_fqdn" {
  description = "Map of primary_fqdn values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no primary_fqdn are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.primary_fqdn if v.primary_fqdn != null && length(v.primary_fqdn) > 0 }
}
output "redis_redis_clusters_replicas_endpoint_ip_address" {
  description = "Map of replicas_endpoint_ip_address values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no replicas_endpoint_ip_address are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.replicas_endpoint_ip_address if v.replicas_endpoint_ip_address != null && length(v.replicas_endpoint_ip_address) > 0 }
}
output "redis_redis_clusters_replicas_fqdn" {
  description = "Map of replicas_fqdn values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no replicas_fqdn are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.replicas_fqdn if v.replicas_fqdn != null && length(v.replicas_fqdn) > 0 }
}
output "redis_redis_clusters_security_attributes" {
  description = "Map of security_attributes values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no security_attributes are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "redis_redis_clusters_shard_count" {
  description = "Map of shard_count values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no shard_count are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.shard_count if v.shard_count != null }
}
output "redis_redis_clusters_software_version" {
  description = "Map of software_version values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no software_version are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.software_version if v.software_version != null && length(v.software_version) > 0 }
}
output "redis_redis_clusters_state" {
  description = "Map of state values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no state are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "redis_redis_clusters_subnet_id" {
  description = "Map of subnet_id values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no subnet_id are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "redis_redis_clusters_system_tags" {
  description = "Map of system_tags values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no system_tags are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "redis_redis_clusters_time_created" {
  description = "Map of time_created values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no time_created are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "redis_redis_clusters_time_updated" {
  description = "Map of time_updated values across all redis_redis_clusters, keyed the same as var.redis_redis_clusters except keys with no time_updated are omitted"
  value       = { for k, v in oci_redis_redis_cluster.redis_redis_clusters : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

