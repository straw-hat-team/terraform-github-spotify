# Alliance

This module allows you to manage GitHub teams for alliances.

## How-To Guides

### Add an alliance to an organization

1. Create or find a GitHub Access Token.
2. Configure the module, for example:

    ```hcl
    module "horde_alliance" {
      source              = "straw-hat-team/spotify/github//modules/alliance"
      version             = "0.0.1"
      github_token        = "your github access token"
      github_organization = "my-org"
      alliance_name       = "horde"
    }
    ```
