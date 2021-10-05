resource "github_team" "team" {
  count   = var.trio_enable ? 1 : 0
  name    = "trio-${var.trio_name}"
  privacy = "closed"
}

resource "github_team_membership" "membership" {
  for_each = toset(var.trio_members)
  team_id  = github_team.team[0].id
  username = each.value
  role     = "member"
}
