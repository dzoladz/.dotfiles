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

echo "== Setting Up Container Management Tools =="

# Install runtime depemdencies
brew install qemu

# Podman
brew install podman
brew install podman-compose

# Start Podman Machine
echo 'Starting Podman Machine'
podman machine init
podman machine start
sleep 1

echo ''
podman info
