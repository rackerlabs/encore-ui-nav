#!/bin/bash

# ensure script will fail if any commands fail
set -e

echo "Checking deploy conditions"
#&& [[ $TRAVIS_PULL_REQUEST = "false"]]
if [[ $TRAVIS_BRANCH = "purge" && $TRAVIS_PULL_REQUEST = "false" ]]; then
    echo "Deploying"
    grunt cloudfiles:production
else
    echo "Not deploying"
    printf "TRAVIS_BRANCH is %s\n" "$TRAVIS_BRANCH"
    printf "TRAVIS_PULL_REQUEST is %s\n" "$TRAVIS_PULL_REQUEST"
fi
