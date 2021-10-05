provider "github" {
  version      = "~> 2.9.1"
  token        = var.github_token
  organization = var.github_organization
}
