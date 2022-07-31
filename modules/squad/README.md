# Squad

This module allows you to manage GitHub teams for squads. Squads belong to a
particular tribe therefore you will need to create a tribe first as well.

## How-To Guides

### Add an alliance to an organization

1. Create or find a GitHub Access Token and configure the GitHub provider.

    ```hcl
    provider "github" {
      token = var.github_token
      owner = "my-org-name"
    }
    ```

2. Configure the module, for example:

    ```hcl
    module "infrastructure_tribe_team" {
      source              = "straw-hat-team/spotify/github//modules/tribe"
      version             = "0.0.1"

      tribe_name          = "infrastructure"
    }

    module "infrastructure_tribe_sre_squad_team" {
      source              = "straw-hat-team/spotify/github//modules/squad"
      version             = "0.0.1"

      squad_name          = "sre"
      squad_tribe         = module.infrastructure_tribe_team.tribe_team[0]
    }
    ```
