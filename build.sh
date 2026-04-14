#!/usr/bin/env bash
where=$(dirname -- "$0")
"${where}/apply.sh"
pushd "$where/meteor" || exit
"./gradlew" clean build
popd || exit
echo "Ok"