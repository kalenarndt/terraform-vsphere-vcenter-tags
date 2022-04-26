# terraform-vsphere-vcenter-tags

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13.1 |
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | >=2.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vsphere"></a> [vsphere](#provider\_vsphere) | 2.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vsphere_tag.tags](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/tag) | resource |
| [vsphere_tag_category.category](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/tag_category) | resource |
| [vsphere_tag_category.category](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/tag_category) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_category_assocation_types"></a> [category\_assocation\_types](#input\_category\_assocation\_types) | List of objects that can be associated with the created Category. https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/tag_category#associable-object-types | `list(string)` | <pre>[<br>  "VirtualMachine"<br>]</pre> | no |
| <a name="input_category_cardinality"></a> [category\_cardinality](#input\_category\_cardinality) | Cardinality for the created Category | `string` | `"MULTIPLE"` | no |
| <a name="input_category_description"></a> [category\_description](#input\_category\_description) | Description for the created Category | `string` | `"Category created via Terraform"` | no |
| <a name="input_category_name"></a> [category\_name](#input\_category\_name) | Category to be created or looked up (if create\_category is equal to false) | `string` | n/a | yes |
| <a name="input_create_category"></a> [create\_category](#input\_create\_category) | (Optional) Conditional that allows for the creation of tag categories | `bool` | `true` | no |
| <a name="input_tag_description"></a> [tag\_description](#input\_tag\_description) | Description that will be appended to each Tag that will be created. e.g if the name of the Tag is Web then it will be Web tag created via Terraform | `string` | `"tag created via Terraform"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags to be created within the category. Required if var.create\_tags is set to true | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tag_category"></a> [tag\_category](#output\_tag\_category) | Output of the created VM sub folders |
| <a name="output_tags"></a> [tags](#output\_tags) | Output of the created vSphere Tags |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
