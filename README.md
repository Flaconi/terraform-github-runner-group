# terraform-github-runner-group

Terraform module to manage Action Runner Groups in GitHub organization


[![lint](https://github.com/flaconi/terraform-github-runner-group/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-github-runner-group/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-github-runner-group/workflows/test/badge.svg)](https://github.com/flaconi/terraform-github-runner-group/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-github-runner-group.svg)](https://github.com/flaconi/terraform-github-runner-group/releases)

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

For requirements regarding module structure: [style-guide-terraform.md](https://github.com/Flaconi/devops-docs/blob/master/doc/conventions/style-guide-terraform.md)

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 6.2 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.2 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_name"></a> [name](#input\_name)

Description: Action Runner group name

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_visibility"></a> [visibility](#input\_visibility)

Description: Visibility of a runner group. Whether the runner group can include `all` or `selected` repositories.

Type: `string`

Default: `"selected"`

### <a name="input_repository_names"></a> [repository\_names](#input\_repository\_names)

Description: List of names of repositories which will be granted access to.

Type: `set(string)`

Default: `[]`

### <a name="input_allows_public_repositories"></a> [allows\_public\_repositories](#input\_allows\_public\_repositories)

Description: Whether public repositories can be added to the runner group.

Type: `bool`

Default: `false`

### <a name="input_restricted_to_workflows"></a> [restricted\_to\_workflows](#input\_restricted\_to\_workflows)

Description: If true, the runner group will be restricted to running only the workflows specified in the selected\_workflows array.

Type: `bool`

Default: `false`

### <a name="input_selected_workflows"></a> [selected\_workflows](#input\_selected\_workflows)

Description: List of workflows the runner group should be allowed to run. This setting will be ignored unless restricted\_to\_workflows is set to true.

Type: `list(string)`

Default: `[]`

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

No outputs.

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2024 **[Flaconi GmbH](https://github.com/flaconi)**
