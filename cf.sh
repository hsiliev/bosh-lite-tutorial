#!/bin/bash -ex

bosh -n target 127.0.0.1 lite
bosh login admin admin

bosh upload release https://bosh.io/d/github.com/cloudfoundry/cf-release?v=237

git clone https://github.com/cloudfoundry/cf-release
cd cf-release
git checkout f074de44d1c484158c8176113b9cb5902db685ec


# cf-release/scripts/generate-bosh-lite-dev-manifest
# bosh -n deploy



