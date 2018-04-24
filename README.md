# ✨ FUN Config ✨

This repository is the place where we store various configuration files shared
among the FUN development team.

## GitHub Labels

Inspired by TailorDev's work on [communication with GitHub
issues](https://tailordev.fr/blog/2016/09/27/communication-with-github-issues-1/),
we decided to define our own set of labels that will be used in all our GitHub
repositories to improve and normalize our work on issues and PRs for both
internal and external contributors. In this section, we will document how to
install and use the [`labels`](https://github.com/popomore/github-labels) tool
to automate labels creation for a GitHub repository.

### Getting started with `labels`

#### GitHub personal access token

To interact with the GitHub API, you will need to [generate a personal access
token](https://github.com/settings/tokens) (make sure it has the `repo`
permission).

Once generated, we will store this token in an environment variable that will be
defined in your favorite shell rc file:

```bash
# .bashrc or .zshrc
export GITHUB_LABELS_TOKEN="thisismytoken"
```

Load a new shell or source your rc file to take into account this new
environment variable (_e.g._ `source $HOME/.zshrc`).

#### Install the `labels` tool

Make sure [Yarn](https://yarnpkg.com) is installed on your machine, then, at the
root of this repository, install `labels`:

```bash
$ cd path/to/fun-config
$ yarn install
```

### Create default labels for a repository

Once `labels` is installed, you can use our default labels configuration to
initialize labels from a repository:

```bash
$ yarn labels -c github/labels/default.json [-f] -t $GITHUB_LABELS_TOKEN user/repository
```

Feel free to substitute `user` by the project namespace (_e.g._ your user name
or team) and repository by the name of the repository.

> Please note that the `-f` option will erase all project labels before creating
> the new ones. It must be used with caution.

Example:

```
$ yarn labels -c github/labels/default.json -t $GITHUB_LABELS_TOKEN openfun/fun-config
```

## License

This work is released under the MIT License (see [LICENSE](./LICENSE)).
