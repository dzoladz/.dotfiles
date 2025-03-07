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

echo "== Setting Up Visual Studio Code =="

# Install Visual Studio Code
brew install --cask visual-studio-code

# Export Active Extension List
# code --list-extensions | xargs -L 1 echo code --install-extension
echo "Installing extensions..."

code --install-extension alexcvzz.vscode-sqlite
code --install-extension donjayamanne.python-environment-manager
code --install-extension GitHub.codespaces
code --install-extension GitHub.github-vscode-theme
code --install-extension GitHub.remotehub
code --install-extension humy2833.ftp-simple
code --install-extension joaompinto.vscode-graphviz
code --install-extension joe-re.sql-language-server
code --install-extension kamikillerto.vscode-colorize
code --install-extension liximomo.sftp
code --install-extension mkloubert.vs-deploy
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.vscode-jupyter-cell-tags
code --install-extension ms-toolsai.vscode-jupyter-slideshow
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode.remote-explorer
code --install-extension ms-vscode.remote-repositories
code --install-extension mtxr.sqltools
code --install-extension mtxr.sqltools-driver-mysql
code --install-extension mtxr.sqltools-driver-pg
code --install-extension mtxr.sqltools-driver-sqlite
code --install-extension njpwerner.autodocstring
code --install-extension njqdev.vscode-python-typehint
code --install-extension redhat.vscode-yaml
code --install-extension TabNine.tabnine-vscode
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples
code --install-extension VisualStudioExptTeam.vscodeintellicode

# TODO: Set Color Theme to Monokai