#!/bin/bash
# -----------------------------------------------------------------------
# Copyright (C) 2024
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

echo "== Performing Post-Install Operations for Homebrew Setup =="

# ----------------------------------------------------------------
# Post-Install Operations
#   1. Relinking
#   2. Version Pinning
#   3. Initial Setup/Execution
# ----------------------------------------------------------------

# -------------------------
# Relinking/Overwrites
# -------------------------
brew link --overwrite cookiecutter

# -------------------------
# Version Pinning
# -------------------------
#brew pin hugo

# -------------------------
# Initial Setup/Execution
# -------------------------

# The CA certificate and its key are stored in an application data folder
# in the user home directory. The rootCA-key.pem file that mkcert automatically
# generates gives complete power to intercept secure requests from your machine.
# Do not share it
mkcert -install

#
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

# -------------------------
# Service Startup
# -------------------------
brew services start redis
brew services start postgresql
brew services start mariadb
brew services start mongodb/brew/mongodb-community