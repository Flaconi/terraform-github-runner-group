variable "name" {
  description = "Action Runner group name"
  type        = string
}

variable "visibility" {
  description = "Visibility of a runner group. Whether the runner group can include `all` or `selected` repositories."
  type        = string
  default     = "selected"
}

variable "repository_names" {
  description = "List of names of repositories which will be granted access to."
  type        = set(string)
  default     = []
}

variable "allows_public_repositories" {
  description = "Whether public repositories can be added to the runner group."
  type        = bool
  default     = false
}

variable "restricted_to_workflows" {
  description = "If true, the runner group will be restricted to running only the workflows specified in the selected_workflows array."
  type        = bool
  default     = false
}

variable "selected_workflows" {
  description = "List of workflows the runner group should be allowed to run. This setting will be ignored unless restricted_to_workflows is set to true."
  type        = list(string)
  default     = []
}
