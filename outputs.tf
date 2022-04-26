output "tag_category" {
  value       = var.create_category ? vsphere_tag_category.category[0] : data.vsphere_tag_category.category[0]
  description = "Output of the created VM sub folders"
}

output "tags" {
  value       = vsphere_tag.tags
  description = "Output of the created vSphere Tags"
}