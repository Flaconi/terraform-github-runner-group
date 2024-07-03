data "git_repository" "this" {
  for_each = var.visibility == "selected" ? var.repository_names : toset([])
  name     = each.key
}
