resource "github_team" "team" {
  count   = var.alliance_enable ? 1 : 0
  name    = "alliance-${var.alliance_name}"
  privacy = "closed"
}

resource "github_team_membership" "membership" {
  for_each = toset(var.alliance_members)
  team_id  = github_team.team[0].id
  username = each.value
  role     = "member"
}
