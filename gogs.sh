#!/bin/sh
set -e -x

git clone https://github.com/cloudfoundry-community/gogs-boshrelease.git || true

cd ./gogs-boshrelease
templates/make_manifest warden
mv tmp/gogs-warden-manifest.yml templates/gogs-warden-manifest.yml

UUID="$(bosh status --uuid)"
sed -i "s/${UUID}/???/g" templates/gogs-warden-manifest.yml
sed -i "s/bosh-warden-boshlite-ubuntu-trusty-go_agent/???/g" templates/gogs-warden-manifest.yml

