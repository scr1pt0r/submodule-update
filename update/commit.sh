#!/usr/bin/env bash

git config --global user.name 'github-actions[bot]'
git config --global user.email 'github-actions[bot]@users.noreply.github.com'

for submodule in "$@"; do
    sha="$(git ls-tree HEAD "$submodule" | awk '{ print $3 }')"
    git add "$submodule"
    git commit -m "chore(submodule): $submodule @ $sha"
done

