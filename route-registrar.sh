#!/bin/bash -ex

bosh -n target 127.0.0.1 lite
bosh login admin admin

wget --progress=dot:mega -c https://bosh.io/d/github.com/cloudfoundry-community/route-registrar-boshrelease -O route-registrar-release.tgz

bosh upload release route-registrar-release.tgz --skip-if-exists

