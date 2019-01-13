#!/bin/sh

set -xe

BUILD_DIR="${BUILD_DIR:-build}"
BRANCH="${BRANCH:-gh-pages}"

cd $BUILD_DIR

# remote="https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
remote="https://github.com/${GITHUB_REPOSITORY}.git"
git init
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@noreply.github.com"
git add .
git commit -m "First commit"
git push -u $remote HEAD:$BRANCH -f
rm -rf .git

echo "done"