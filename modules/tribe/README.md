# Tribe

This module allows you to manage GitHub teams for tribes.

## Example usage

```hcl
module "infrastructure_tribe" {
  source              = "straw-hat-team/spotify/github//modules/tribe"
  version             = "0.0.1"
  github_token        = "your github access token"
  github_organization = "my-org"
  tribe_name          = "infrastructure"
}
```
