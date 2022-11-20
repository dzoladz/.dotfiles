#!/bin/sh

echo ""
echo "INITIATING SYSTEM CONFIGURATION FOR..."
echo "     _               _      _____     _           _      "
echo "  __| | ___ _ __ ___| | __ |__  /___ | | __ _  __| |____ "
echo " / _  |/ _ \  __/ _ \ |/ /   / // _ \| |/ _  |/ _  |_  / "
echo "| (_| |  __/ | |  __/   <   / /| (_) | | (_| | (_| |/ /  "
echo " \__,_|\___|_|  \___|_|\_\ /____\___/|_|\__,_|\__,_/___| "
echo ""
sleep 1


#---------------------------------------------------------
# Step 1: Setup Paths
#---------------------------------------------------------
export DOTFILES="$HOME/.dotfiles"
export ZSH="$HOME/.oh-my-zsh"


#---------------------------------------------------------
# Step 2: Setup Homebrew
#---------------------------------------------------------
source $DOTFILES/homebrew/setup_homebrew.sh


#---------------------------------------------------------
# Step 3: Confirm Xcode Command line Tools
#---------------------------------------------------------
which xcode-select
if [[ $? != 0 ]] ; then
    echo "Installing Xcode Command Line Tools..."
    source $DOTFILES/xcode/setup_xcode.sh
else
    echo "Xcode Command Line Tools Installed!"
fi


#---------------------------------------------------------
# Step 4: Install Packages via Homebrew
#---------------------------------------------------------
source $DOTFILES/homebrew/install_packages.sh


#---------------------------------------------------------
# Step 5: Setup Preferred Shell Environment
#---------------------------------------------------------
source $DOTFILES/shell/setup_shell.sh

if [ -f $HOME/.dotfiles/myfuncs ]; then
    . $HOME/.dotfiles/myfuncs
fi

# .zshrc is sourced in interactive shells; ensure availability
if [ -f $HOME/.zshrc ]
then
  echo ".zshrc available"
else
  touch $HOME/.zshrc
fi

# Aliases - write to .zshrc file
echo -e "\n#Aliases\nsource $DOTFILES/shell/aliases.zsh\n"  | tee -a $HOME/.zshrc

# Functions - write to .zshrc file
echo -e "\n#Functions\nsource $DOTFILES/shell/functions.zsh\n"  | tee -a $HOME/.zshrc

# Options - write to .zshrc file
echo -e "\n#EXA - Color Preferences\nsource $DOTFILES/exa.zsh\n"  | tee -a $HOME/.zshrc

# VIM - Clone .vim Configuration into $HOME
git clone --recurse-submodules https://github.com/dzoladz/.vim.git $HOME/.vim


#---------------------------------------------------------
# Step 6: Install Fonts
#---------------------------------------------------------
source $DOTFILES/fonts/setup_fonts.sh


#---------------------------------------------------------
# Step 7: Install Custom git Commands
#---------------------------------------------------------
echo -e "\nexport $PATH:$DOTFILES/git\n" | tee -a $HOME/.zshrc


#---------------------------------------------------------
# Step 8: Setup VScode
#---------------------------------------------------------
source $DOTFILES/vscode/setup_vscode.sh


#---------------------------------------------------------
# Step 9: Setup Container Runtime and Tooling
#---------------------------------------------------------
source $DOTFILES/podman/setup_podman.sh

#---------------------------------------------------------
# Step 10: Use Walphypa for Desktop Backgrounds
#---------------------------------------------------------
# Clone walphypa
# Write cronjob to refresh images
