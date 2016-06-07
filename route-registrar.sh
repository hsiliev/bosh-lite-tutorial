#!/bin/bash -ex

bosh -n target 127.0.0.1 lite
bosh login admin admin

bosh upload release https://bosh.io/d/github.com/cloudfoundry-community/route-registrar-boshrelease

