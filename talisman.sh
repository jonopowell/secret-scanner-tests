#!/usr/bin/env bash

curl --silent  https://raw.githubusercontent.com/thoughtworks/talisman/master/global_install_scripts/install.bash > /tmp/install_talisman.bash
/bin/bash /tmp/install_talisman.bash


# Download the talisman installer script
curl https://thoughtworks.github.io/talisman/install.sh > ~/install-talisman.sh
chmod +x ~/install-talisman.sh

# Install as a pre-push hook
~/install-talisman.sh