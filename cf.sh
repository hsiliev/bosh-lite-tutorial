#!/bin/bash -ex

bosh -n target 127.0.0.1 lite
bosh login admin admin

VERSION=237

wget --progress=dot:mega -c https://bosh.io/d/github.com/cloudfoundry/cf-release?v=$VERSION -O cf-release.tgz
bosh upload release cf-release.tgz --skip-if-exists

if [ ! -d cf-release ]; then
  git clone https://github.com/cloudfoundry/cf-release
fi

pushd cf-release
  git checkout v$VERSION

  sudo gem install bundler
  sudo ./scripts/generate-bosh-lite-dev-manifest
  sudo chown -R vagrant:vagrant bosh-lite

  bosh -n deploy
popd

bosh -n delete deployment cf-warden



