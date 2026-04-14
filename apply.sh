#!/usr/bin/env bash
where=$(dirname -- "$0")
pushd "$where/meteor" || exit
git apply "../remove_woke.patch"
popd || exit
echo "Patch applied"