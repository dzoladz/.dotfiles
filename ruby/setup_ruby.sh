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

RUBY_VERSION='3.2.0'

echo "== Setting Up Ruby $RUBY_VERSION =="

# Install Ruby environment manager
brew install rbenv ruby-build

# Ensure Ruby $RUBY_VERSION is available
rbenv install $RUBY_VERSION
sleep 1

# Ensure Ruby $RUBY_VERSION is available
rbenv global $RUBY_VERSION

CHECK_RUBY_VERSION=$(ruby -v)
echo "ACTIVE RUBY VERSION IS:"
echo "${CHECK_RUBY_VERSION}"