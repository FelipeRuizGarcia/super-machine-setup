#!/bin/bash

# do need to grant sudo permission

sudo echo "SMS UPDATE ALL"

# os common
# brew cleanup
# brew cleanup --prune=all
# brew autoremove

bash -x ./update_os_tools.sh
bash -x ./update_nvim.sh
