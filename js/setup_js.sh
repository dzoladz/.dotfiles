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

echo "== Setting Up JS Toolchain =="
sleep 1

# ---------------------------------
# Volta - The JavaScript Launcher ⚡
# ---------------------------------

# Installing Volta - https://docs.volta.sh/guide/
echo "== Setting Up JS Toolchain =="

# Install Volta as Node environment manager
curl https://get.volta.sh | bash

VOLTA_VERSION=`volta -v`
echo "Volta version $VOLTA_VERSION installed!"

# Enable Volta for current user
volta setup
sleep 1

echo "Volta enabled for current user"

# Node toolchain under Volta's control
tools=(
    node
    npm
)

for tool in ${tools[@]}; do
    volta install $tool
done
