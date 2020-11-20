#!/usr/bin/env bash
# Install latest mesa driver for Ubuntu (20.04 LTS)
set -euxo pipefail

sudo add-apt-repository ppa:kisak/kisak-mesa -yu
sudo apt update && sudo apt full-upgrade -y
