# Guild

This module allows you to manage GitHub teams for guilds.

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
    module "ios_guild_team" {
      source              = "straw-hat-team/spotify/github//modules/guild"
      version             = "0.0.1"
      github_token        = "your github access token"
      github_organization = "my-org"
      guild_name          = "ios"
    }
    ```
