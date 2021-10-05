output "alliance_team" {
  description = "The alliance team created. Visit https://www.terraform.io/docs/providers/github/r/team.html#attributes-reference for more information about this object."
  value       = github_team.team.*
}
