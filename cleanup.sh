#!/bin/bash
set -e -x

VERSION="$(bosh stemcells | awk '{if (NR == 5) {print $6}}')"
bosh -n delete stemcell bosh-warden-boshlite-ubuntu-trusty-go_agent "${VERSION}"

rm ~/.bosh_config
rm -rf ~/.bosh
