# shared functionality for the *-update scripts

# read the target branch from the .gitmodules config file
TARGET_BRANCH=$(sed -n "0,/^[[:space:]]*branch[[:space:]]*=/s/^[[:space:]]*branch[[:space:]]*=[[:space:]]*\(.*\)/\1/p" .gitmodules)
echo "Target branch: $TARGET_BRANCH"

# command for updating the git checkout:
# - stash the current changes to not loose them
# - reset the checkout to a clean state
# - fetch from remote
# - ensure the target branch is checked out
# - pull the upstream changes
UPDATE_CMD="git stash save && git reset --hard && \
git fetch --prune && git checkout -q $TARGET_BRANCH &&  \
git pull --rebase"

