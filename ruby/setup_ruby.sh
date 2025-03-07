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

RUBY_VERSION='3.4.1'
BREW_EXECUTABLE=`which brew`

echo "== Setting Up Ruby $RUBY_VERSION =="

# Install Ruby environment manager
brew install chruby ruby-install

# Set up Chruby
export HOMEBREW_PREFIX="/opt/homebrew"
echo '\nsource $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh' >> $HOME/.zshrc
echo '\nsource $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh' >> $HOME/.zshrc
echo '\nRUBIES+=(~/.rbenv/versions/*)' >> $HOME/.zshrc
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh

# Ensure Ruby $RUBY_VERSION is available
ruby-install ruby $RUBY_VERSION
sleep 1

# Ensure Ruby $RUBY_VERSION is available
chruby $RUBY_VERSION

CHECK_RUBY_VERSION=$(ruby -v)
echo "ACTIVE RUBY VERSION IS:"
echo "${CHECK_RUBY_VERSION}"