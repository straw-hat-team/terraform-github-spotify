resource "github_team" "team" {
  count      = var.chapter_enable ? 1 : 0
  name       = "${var.chapter_tribe.slug}-chapter-${var.chapter_name}"
  privacy    = "closed"
  depends_on = [var.chapter_tribe]
}

resource "github_team_membership" "membership" {
  for_each = toset(var.chapter_members)
  team_id  = github_team.team[0].id
  username = each.value
  role     = "member"
}
