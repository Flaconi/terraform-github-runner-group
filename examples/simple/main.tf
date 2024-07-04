variable "github_token" {
  type    = string
  default = ""
}

variable "github_owner" {
  type    = string
  default = ""
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

# This will create `example` runner group
module "example" {
  source = "../../"

  name       = "example"
  visibility = "all"
}
