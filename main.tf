

resource "vsphere_tag_category" "category" {
  count            = var.create_category ? 1 : 0
  name             = var.category_name
  description      = var.category_description
  cardinality      = var.category_cardinality
  associable_types = var.category_assocation_types
}

resource "vsphere_tag" "tags" {
  for_each    = toset(var.tags)
  name        = each.value
  description = "${each.value} ${var.tag_description}"
  category_id = var.create_category ? vsphere_tag_category.category[0].id : data.vsphere_tag_category.category[0].id
}

data "vsphere_tag_category" "category" {
  count = var.create_category ? 0 : 1
  name  = var.category_name
}