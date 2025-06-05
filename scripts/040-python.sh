#!/bin/bash
set -eux -o pipefail

# Install pip
apt-get -y install python3-pip

chmod +x /tmp/packer/python/install-packages.sh
/tmp/packer/python/install-packages.sh
