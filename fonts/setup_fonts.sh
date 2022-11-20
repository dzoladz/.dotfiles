#!/bin/sh
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
# -----------------------------------------------------------------------

# Tap cask-fonts
brew tap homebrew/cask-fonts

echo "Installing fonts..."

# Nerdfonts
# https://www.nerdfonts.com/
nerdfonts=(
  font-jetbrains-mono-nerd-font
  font-overpass-nerd-font
  font-fira-mono-nerd-font
  font-redhat
)

brew install --cask ${nerdfonts[@]}