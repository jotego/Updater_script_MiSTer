#!/usr/bin/env bash
# Copyright (c) 2020 José Manuel Barroso Galindo <theypsilon@gmail.com>

set -euo pipefail

UPSTREAM_REPO="https://github.com/MiSTer-devel/Updater_script_MiSTer.git"
MAIN_BRANCH="master"

export GIT_MERGE_AUTOEDIT=no
git config --global user.email "theypsilon@gmail.com"
git config --global user.name "The CI/CD Bot"

echo "Fetching upstream:"
git remote remove upstream 2> /dev/null || true
git remote add upstream ${UPSTREAM_REPO}
git -c protocol.version=2 fetch --no-tags --prune --no-recurse-submodules upstream

echo
echo "Fetching origin:"
git fetch origin --unshallow 2> /dev/null || true
if git merge-base --is-ancestor remotes/upstream/${MAIN_BRANCH} HEAD > /dev/null 2>&1 ; then
    echo
    echo "Upstream commits already in local repository."
    exit 0
fi

echo
echo "Syncing with upstream:"
git merge --no-commit remotes/upstream/${MAIN_BRANCH}

echo
echo "Pushing changes:"
git commit -m "BOT: Merging upstream, sync done successfully."
git push origin ${MAIN_BRANCH}
