#!/bin/bash -xeu

pushd bbl-state/${BBL_ENV}/state
set +x
eval "$(bbl print-env)"
set -x
popd
bosh -n -d prometheus delete-deployment
