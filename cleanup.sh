#!/bin/bash -ex

VERSION="$(bosh stemcells | awk '{if (NR == 5) {print $6}}')"
bosh -n delete stemcell bosh-warden-boshlite-ubuntu-trusty-go_agent "${VERSION}"

rm ~/.bosh_config
rm -rf ~/.bosh

set +x

echo ""
echo "*************************************"
echo "Provisioning completed successfully !"
echo "*************************************"
echo ""
