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

echo "== Setting Up Desktop Wallpapers - Wahlpypa =="

# Clone walphypa
if [ ! -d $HOME/wahlpypa ]
then
  echo "~/wahlpypa is available"
else
  git clone https://github.com/dzoladz/wahlpypa.git $HOME/.wahlpypa

  # Change working directory
  cd $HOME/.wahlpypa

  # Setup Python environment
  pipenv install

  # Perform initial run
  pipenv shell
  python run.py
fi

