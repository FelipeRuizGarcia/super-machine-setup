#!/bin/bash

# Brew
# ----

# which pkgs build from sources ? TODO
#
# which pkgs are common ? Those with brew formula

# Snap packages should be configure as cask packages
# Since brew cask does not work on linux

SNAP_PACKAGES="${SNAP_PACKAGES}"

# ide
brew install \
    # \ -s
    bat fzf nvim gh

# web
brew tap oven-sh/bun
brew install -s bun pnpm hugo typescript node nvm

# aws
brew install -s awscli aws-nuke aws-amplify cloud-nuke

# python
brew install -s poetry

# devtools # optional
# brew install -s istioctl kubernetes-cli minikube

# brew config
# autocompletation
compinit
chmod -R go-w "$(brew --prefix)/share"

# MacOs only
# brew install --cask macs-fan-control --cask rectangle
