resource "github_team" "team" {
  count      = var.squad_enable ? 1 : 0
  name       = "${var.squad_tribe.slug}-squad-${var.squad_name}"
  privacy    = "closed"
  depends_on = [var.squad_tribe]
}

resource "github_team_membership" "membership" {
  for_each = toset(var.squad_members)
  team_id  = github_team.team[0].id
  username = each.value
  role     = "member"
}
