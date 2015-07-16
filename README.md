# BOSH Lite tutorial
This repo provides an easy way to try out BOSH (lite) by installing the [GOGS BOSH Release](https://github.com/cloudfoundry-community/gogs-boshrelease).

# Prerequisites

You need to install:
* git
* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com)

# Start the VM

Clone the project and start the VM with

```
git clone https://github.com/hsiliev/bosh-lite-tutorial.git
cd bosh-lite-tutorial
vagrant up
```

If the provisioning scripts fail you can resume them with:
```
vagrant provision
```

# Tutorial

Follow the steps described in the [Powerpoint presentation](https://github.com/hsiliev/bosh-lite-tutorial/blob/master/Tutorial.pptx)
