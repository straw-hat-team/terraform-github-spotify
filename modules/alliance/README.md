# Alliance

This module allows you to manage GitHub teams for alliances.

## Example usage

```hcl
module "horde_alliance" {
  source              = "straw-hat-team/spotify/github//modules/alliance"
  version             = "0.0.1"
  github_token        = "your github access token"
  github_organization = "my-org"
  alliance_name       = "horde"
}
```
