#!/bin/bash
set -eux -o pipefail

# Package install for python libraries
apt-get -y install \
    cmake \
    build-essential

chmod +x /tmp/packer/python/install-packages.sh
/tmp/packer/python/install-packages.sh
