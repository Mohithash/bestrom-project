#!/usr/bin/env bash
# Initialize a BestROM Android 17 tree.
set -euo pipefail
DIR="${1:-$HOME/bestrom}"
mkdir -p "$DIR"
cd "$DIR"
repo init -u https://github.com/Mohithash/manifest -b 17 --git-lfs
echo "Initialized $DIR - run: repo sync -c -j\$(nproc) --no-clone-bundle"
