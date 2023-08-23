#!/bin/bash
# -----------------------------------------------------------------------
# Copyright (C) 2023
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
#       - see post_install.sh
# ----------------------------------------------------------------------

# -----------
# Brew Cellar
# -----------
cellar=(
    wget
    git
    go
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
    exa
    d2
    pgadmin4
    csvkit
    mkcert
    nss # mkcert dependency for Firefox
    orbstack
    iproute2mac
    geckodriver # selenium webdriver
    asdf
)

for formula in ${cellar[@]}; do
    brew install $formula
done

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
    balenaetcher
    koodo-reader
    spotify
    discord
    bitwarden
    pycharm
    joplin
    tunnelblick
    microsoft-teams
    wireshark
    mariadb-connector-c
    zoom
)

for cask in ${cask[@]}; do
    brew install --cask $cask
done
