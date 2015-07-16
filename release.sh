#!/bin/sh
set -e -x

bosh login admin admin
bosh target 127.0.0.1 lite

bosh upload stemcell ~/bosh-warden-boshlite-ubuntu-trusty-go_agent.tgz
cd ./gogs-boshrelease
templates/make_manifest warden

bosh -n create release --force && bosh upload release
bosh -n deploy
