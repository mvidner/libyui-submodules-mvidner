## Libyui Submodules Repository

This repository contains the libyui submodules to ease checking out
and updating all libyui Git repositories.

### Commands

Initial clone:

`git clone --recurse-submodules git@github.com:lslezak/libyui-submodules.git`

This clones the repositories in the detached HEAD state, please run
`git submodule foreach "git checkout master"` to checkout the `master` branch.

Updating the repositories:

- `git submodule foreach "git pull --rebase"`
- or run the `./parallel-update` script which updates the modules in parallel
  which is much faster

Adding new modules:

- `git submodule add -b master <url>`

Removing a module:

- `git rm <module>`
