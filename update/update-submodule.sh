#!/usr/bin/env bash

for submodule in "$@"; do
    git submodule update --init --remote --force --checkout -- "$submodule"
done
