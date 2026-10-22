resource "github_team" "team" {
  count   = var.tribe_enable ? 1 : 0
  name    = "tribe-${var.tribe_name}"
  privacy = "closed"
}

resource "github_team_membership" "membership" {
  for_each = merge(
    { for username in var.tribe_members : username => "member" },
    { for username in var.tribe_maintainers : username => "maintainer" },
  )
  team_id  = github_team.team[0].id
  username = each.key
  role     = each.value
}
