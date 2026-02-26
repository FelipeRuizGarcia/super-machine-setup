#!/bin/bash

# rpm packages are at /var/cache/libdnf5/

sudo dnf5 reinstall --cacheonly '*firmware*' --skip-unavailable

# reinstall the same package as last time
# selecting the repo, 
# otherwise requires download the package of the other repo not available
# sudo dnf5 reinstall --cacheonly '*wifi*' --repo=updates
