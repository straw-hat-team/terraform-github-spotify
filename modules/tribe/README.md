# Tribe

This module allows you to manage GitHub teams for tribes.

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
    module "infrastructure_tribe" {
      source              = "straw-hat-team/spotify/github//modules/tribe"
      version             = "0.0.1"
      github_token        = "your github access token"
      github_organization = "my-org"
      tribe_name          = "infrastructure"
    }
    ```
