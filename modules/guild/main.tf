resource "github_team" "team" {
  count   = var.guild_enable ? 1 : 0
  name    = "guild-${var.guild_name}"
  privacy = "closed"
}

resource "github_team_membership" "membership" {
  for_each = toset(var.guild_members)
  team_id  = github_team.team[0].id
  username = each.value
  role     = "member"
}
