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

echo "== Setting Up PHP Preferences =="
sleep 1

# Install current PHP version
brew list | grep php

if [[ $? != 0 ]] ; then
    brew uninstall php
    sleep 1
    brew install php
    echo "PHP upgraded!"
else
    echo "Installing PHP..."
    brew install php
fi

# ----------------------------------------------------------------------
# ----------------------------------------------------------------------
# By default, brew will not permit the installation of
# unsupported versions of PHP. To force the ability to
# work with older version, tap shivammathur/php
brew tap shivammathur/php

# Unsupported versions to install
versions=(
    '5.4'
    '7.2'
)

for version in "${versions[@]}"; do
    brew install shivammathur/php/php@$version
done

# To activate and unsupported version of PHP, it must be linked:
# brew unlink php  &&  brew link php@7.2
# ----------------------------------------------------------------------
# ----------------------------------------------------------------------

# Install PHP package manager
brew install composer

# Install XDebug from https://pecl.php.net/ (PECL :: The PHP Extension Community Library)
pecl install xdebug