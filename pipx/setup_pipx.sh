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

echo "== Setting Up Pipx Path and Applications =="

which pipx
if [[ $? != 0 ]] ; then
    echo "Installing Pipx..."
    brew install pipx
else
    echo "Pipx is Installed!"
fi

# Ensure Pipx path ($HOME/.local.bin) is in PATH environment variable
pipx ensurepath

# Install Pipx Apps
echo 'Installing Applications'

apps=(
    poetry
    cookiecutter
    alembic
)

for app in ${apps[@]}; do
    pipx install $app
done


# List Installed Applications
pipx list --short
sleep 1

# Inject poetry export for SBOM generation on commit
pipx inject poetry poetry-plugin-export