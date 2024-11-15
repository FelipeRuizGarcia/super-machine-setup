#!/bin/bash

# This script updates the ONLY Windows OS packages
# WINGET - WSL UPGRADE

powershell.exe wsl --update

powershell.exe winget upgrade

# restart wsl to use the latest
# wsl --shutdown
