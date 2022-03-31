#!/usr/bin/env bash

curl --silent  https://raw.githubusercontent.com/thoughtworks/talisman/master/global_install_scripts/install.bash > /tmp/install_talisman.bash
/bin/bash /tmp/install_talisman.bash

#install talisman html reporting
curl https://github.com/jaydeepc/talisman-html-report/archive/v1.3.zip -o ~/.talisman/talisman_html_report.zip -J -L && cd ~/.talisman && unzip talisman_html_report.zip -d . && mv talisman-html-report-1.3 talisman_html_report && rm talisman_html_report.zip

cat report.json | jq '.results| .[].filename'  | less

# Uninstall 
curl --silent  https://raw.githubusercontent.com/thoughtworks/talisman/master/global_install_scripts/uninstall.bash > /tmp/uninstall_talisman.bash
/bin/bash /tmp/uninstall_talisman.bash
/bin/bash /tmp/uninstall_talisman.bash pre-push

unset TALISMAN_INTERACTIVE
unset TALISMAN_HOME