resource "github_team" "team" {
  count   = var.tribe_enable ? 1 : 0
  name    = "tribe-${var.tribe_name}"
  privacy = "closed"
}

resource "github_team_membership" "membership" {
  for_each = toset(var.tribe_members)
  team_id  = github_team.team[0].id
  username = each.value
  role     = "member"
}
