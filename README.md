# Terraform Spotify GitHub

This repository contains a set of Terraform modules for managing GitHub organization following the Spotify model.

You could read [Discover the Spotify model by Atlassian](https://www.atlassian.com/agile/agile-at-scale/spotify) to
learn more about it.

## References

- [modules/alliance](./modules/alliance/README.md) allows you to manage GitHub teams for alliances.
- [modules/chapter](./modules/chapter/README.md) allows you to manage GitHub teams for chapters.
- [modules/guild](./modules/guild/README.md) allows you to manage GitHub teams for guilds.
- [modules/squad](./modules/squad/README.md) allows you to manage GitHub teams for squads.
- [modules/tribe](./modules/tribe/README.md) allows you to manage GitHub teams for tribes.
- [modules/trio](./modules/trio/README.md) allows you to manage GitHub teams for trios.

## Explanations

### Nested Teams

GitHub Team synchronization with Identity Providers feature does not work with nested teams, therefore, you need to have
a flat structure and avoid such feature in GitHub if you would like to have such feature; because of that, we do not use
nested teams for chapters, and squads, rather, we rely on the naming convention alone.
