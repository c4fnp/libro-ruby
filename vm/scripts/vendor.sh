#!/bin/bash
set -ex
REPO_ROOT=$(git rev-parse --show-toplevel)
pushd $REPO_ROOT/vm
trap popd EXIT

cd cookbooks/rubyvmdeps
berks vendor ../../site-cookbooks
