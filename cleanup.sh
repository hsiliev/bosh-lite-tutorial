#!/bin/sh
set -e -x

VERSION="$(bosh stemcells | awk '{if (NR == 6) {print $5}}')"
bosh -n delete stemcell bosh-warden-boshlite-ubuntu-trusty-go_agent "${VERSION}"

rm ~/.bosh_config
rm -rf ~/.bosh