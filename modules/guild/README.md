# Guild

This module allows you to manage GitHub teams for guilds.

## Example usage

```hcl
module "ios_guild_team" {
  source              = "straw-hat-team/spotify/github//modules/guild"
  version             = "0.0.1"
  github_token        = "your github access token"
  github_organization = "my-org"
  guild_name          = "ios"
}
```
