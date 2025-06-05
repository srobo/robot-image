#!/bin/bash
set -eux -o pipefail

# Install base python packages
pip install -r /tmp/packer/python/requirements.txt

# Install additional useful libraries for the competitors
pip install -r /tmp/packer/python/libraries.txt

# Record the installed packages
pip freeze > py-packages.txt
