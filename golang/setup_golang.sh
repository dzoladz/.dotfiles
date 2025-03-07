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

# Check for Go installation
echo "== Setting Up Golang =="
which go
if [[ $? != 0 ]] ; then
    echo "Installing Go..."
    brew install go
else
    echo "Go is Installed!"
fi

echo $(go version)