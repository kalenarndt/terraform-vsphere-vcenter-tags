variable "category_name" {
  description = "Category to be created or looked up (if create_category is equal to false)"
  type        = string
}

variable "category_description" {
  description = "Description for the created Category"
  type        = string
  default     = "Category created via Terraform"
}

variable "category_cardinality" {
  description = "Cardinality for the created Category"
  type        = string
  default     = "MULTIPLE"
}

variable "category_assocation_types" {
  description = "List of objects that can be associated with the created Category. https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/tag_category#associable-object-types"
  type        = list(string)
  default     = ["VirtualMachine"]
}

variable "tags" {
  description = "List of tags to be created within the category. Required if var.create_tags is set to true"
  type        = list(string)
  default     = [""]
}

variable "tag_description" {
  description = "Description that will be appended to each Tag that will be created. e.g if the name of the Tag is Web then it will be Web tag created via Terraform"
  type        = string
  default     = "tag created via Terraform"
}

## Conditionals ##
variable "create_category" {
  description = "(Optional) Conditional that allows for the creation of tag categories"
  type        = bool
  default     = true
}

