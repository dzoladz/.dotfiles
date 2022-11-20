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

# Using Homebrew as the default package manager for MacOS
echo "== Setting Up Package Manager - Homebrew =="
which brew
if [[ $? != 0 ]] ; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is Installed!"
fi

# Schedule Homebrew Updates
# Adjust CRON_ENTRY as desired
BREW_EXECUTABLE=`which brew`
CRON_ENTRY="0 */6 * * * ${BREW_EXECUTABLE} update &>/dev/null"
if ! crontab -l | fgrep "$CRON_ENTRY" >/dev/null; then
  (crontab -l 2>/dev/null; echo "$CRON_ENTRY") | \
    crontab -
fi

# Upgrade Brew and existing packages
brew update
brew upgrade

# Turn off Google Analytics
brew analytics off

# Ensure casks are available
brew tap homebrew/cask

# Remove outdated versions from the cellar
brew cleanup

# Run diagnostics
brew doctor
