#!/bin/sh
set -e -x

wget --progress=dot:mega -c https://bosh.io/d/stemcells/bosh-warden-boshlite-ubuntu-trusty-go_agent -O bosh-warden-boshlite-ubuntu-trusty-go_agent.tgz

bosh target 127.0.0.1 lite
bosh login admin admin
bosh upload stemcell bosh-warden-boshlite-ubuntu-trusty-go_agent.tgz --skip-if-exists