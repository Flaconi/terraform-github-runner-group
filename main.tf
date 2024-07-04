resource "github_actions_runner_group" "this" {
  name                       = var.name
  visibility                 = var.visibility
  selected_repository_ids    = [for r in data.git_repository.this : r.id]
  allows_public_repositories = var.allows_public_repositories
  restricted_to_workflows    = var.restricted_to_workflows
  selected_workflows         = var.selected_workflows
}
