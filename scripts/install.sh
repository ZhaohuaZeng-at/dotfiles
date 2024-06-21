#!/bin/zsh
set -eoxu pipefail

brew install $(<brew-packages.txt)

