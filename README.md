## Libyui Submodules Repository

This repository contains the libyui submodules to ease checking out
and updating all libyui Git repositories.

### Commands

Initial clone:

`git clone --recurse-submodules git@github.com:lslezak/libyui-submodules.git`

This clones the repositories in the detached HEAD state, please run one of the
update scripts below to track the branch.

Fast parallel update:

- Use the `fast-update` script (uses plain `xargs`, should work everywhere)
- Or the `parallel-update` script (requires `gnu_parallel` package,
  does not mix the subprocess outputs)

Adding new modules:

`git submodule add -b master <url>`

Removing a module:

`git rm <module>`
