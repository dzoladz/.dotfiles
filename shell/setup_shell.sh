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

echo "== Setting Up Shell Preferences - Zsh =="
sleep 1
which zsh
if [[ $? != 0 ]] ; then
    echo "Installing Zsh..."
    touch ~/.zshrc
    brew install zsh
else
    echo "Zsh is Installed!"
fi

# Oh-My-ZSH
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" > /dev/null

# Set default shell to Zsh
chsh -s $(brew --prefix)/bin/zsh
