#!/bin/bash
set -eux -o pipefail

# Install base python packages
pip install --no-cache-dir -r /tmp/packer/python/requirements.txt

# Install additional useful libraries for the competitors
pip install --no-cache-dir -r /tmp/packer/python/libraries.txt

# Record the installed packages
pip freeze > py-packages.txt
