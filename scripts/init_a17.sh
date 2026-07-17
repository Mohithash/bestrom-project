#!/usr/bin/env bash
# Initialize BestROM Android 17 AOSP tree
set -euo pipefail
DIR="${1:-$HOME/bestrom-a17}"
mkdir -p "$DIR"
cd "$DIR"
repo init -u https://android.googlesource.com/platform/manifest -b android-17.0.0_r1 --git-lfs
mkdir -p .repo/local_manifests
curl -fsSL -o .repo/local_manifests/bestrom.xml \
  https://raw.githubusercontent.com/Mohithash/bestrom_manifest/17/snippets/local_manifest_peridot.xml
echo "Initialized $DIR — run: repo sync -c -j\$(nproc)"
