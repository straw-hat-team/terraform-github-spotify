# Squad

This module allows you to manage GitHub teams for squads. Squads belong to a
particular tribe therefore you will need to create a tribe first as well.

## Example usage

```hcl
module "infrastructure_tribe_team" {
  source              = "straw-hat-team/spotify/github//modules/tribe"
  version             = "0.0.1"
  github_token        = "your github access token"
  github_organization = "my-org"
  tribe_name          = "infrastructure"
}

module "infrastructure_tribe_sre_squad_team" {
  source              = "straw-hat-team/spotify/github//modules/squad"
  version             = "0.0.1"
  github_token        = "your github access token"
  github_organization = "my-org"
  squad_name          = "sre"
  squad_tribe         = module.infrastructure_tribe_team.tribe_team[0]
}
```
