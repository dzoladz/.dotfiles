#!/bin/bash
# -----------------------------------------------------------------------
# Copyright (C) 2025
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
#   1. Taps (Third-Party Repositories)
#   2. Cellar
#   3. Casks
#   4. Post-Install Operations
#       - see post_install.sh
# ----------------------------------------------------------------------

# --------------------------------------
# Enable Taps (Third-Party Repositories)
# --------------------------------------
brew tap elastic/tap
brew tap mongodb/brew

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
    yt-dlp
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
    pre-commit
    awscli
    exiftool
    d2
    pgadmin4
    csvkit
    mkcert
    nss # mkcert dependency for Firefox
    iproute2mac
    geckodriver # selenium webdriver
    redis
    postgresql@14
    mariadb
    gd
    mongodb-community@7.0
    postgis
    graphviz
    tshark
    jq
    elastic/tap/elasticsearch-full
    nginx
    zork
    composer
    sslscan
    mailpit
    ripgrep
    asn
    just
    ykman
    lnav
)

for formula in "${cellar[@]}"; do
    brew install "$formula"
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
    tunnelblick
    microsoft-teams
    wireshark
    mariadb-connector-c
    zoom
    imhex
    netnewswire
    ruff
    drawio
    obsidian
)

for cask in ${cask[@]}; do
    brew install --cask $cask
done
