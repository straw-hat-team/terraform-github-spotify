# Trio

This module allows you to manage GitHub teams for trios.

## Example usage

```hcl
module "finance_trio" {
  source              = "straw-hat-team/spotify/github//modules/trio"
  version             = "0.0.1"
  github_token        = "your github access token"
  github_organization = "my-org"
  trio_name           = "finance"
}
```
