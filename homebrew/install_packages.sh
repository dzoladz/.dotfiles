#!/bin/bash
# -----------------------------------------------------------------------
# Copyright (C) 2022
# Derek C. Zoladz  <derek@derekzoladz.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# ----------------------------------------------------------------------

echo "== Setting Up Homebrew Packages =="

# ----------------------------------------------------------------------
# TABLE OF CONTENTS
#   1. Cellar
#   2. Casks
#   3. Post-Install Operations
#      - Relinking/Overwries
#      - Version Pinning
# ----------------------------------------------------------------------

# -----------
# Brew Cellar
# -----------
cellar=(
    wget
    git
    hugo
    python
    pipenv
    youtube-dl
    tree
    imagemagick
    ffmpeg
    ansible
    mysql
    pandoc
    ssh-copy-id
    node
    nvm
    cookiecutter
    watch
    htop
    gnupg
    gnu-sed
    gzip
    coreutils
    findutils
    make
    httpie
    git-extras
    helm
    pre-commit
    git-fame
    awscli
    exiftool
)

brew install ${cellar[@]}

#----------
# Brew Cask
#----------
cask=(
    iterm2
    slack
    google-chrome
    brave-browser
    firefox
    db-browser-for-sqlite
    ealenaetcher
    lastpass
    koodo-reader
    spotify
    discord
    #virtualbox
    #sequel-pro
    #handbrake
    #bitwarden
    #pycharm
    #joplin
    #openrefine
)

brew install --cask ${cask[@]}

# -----------------------
# Post-Install Operations
# -----------------------

# Relinking/Overwries
brew link --overwrite cookiecutter

# Version Pinning
#brew pin hugo





