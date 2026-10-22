resource "github_team" "team" {
  count      = var.squad_enable ? 1 : 0
  name       = "${var.squad_tribe.slug}-squad-${var.squad_name}"
  privacy    = "closed"
  depends_on = [var.squad_tribe]
}

resource "github_team_membership" "membership" {
  for_each = merge(
    { for username in var.squad_members : username => "member" },
    { for username in var.squad_maintainers : username => "maintainer" },
  )
  team_id  = github_team.team[0].id
  username = each.key
  role     = each.value
}
