#!/bin/bash

DOTFILES="$HOME/.dotfiles"
CONFIG="$HOME/.config"
PYNVIMENVDIR="$HOME/.pyenv"

mkdir -p $CONFIG
mkdir -p $PYNVIMENVDIR

#
# Git
#
brew install git git-flow-avh
ln -sFfh "$DOTFILES/git" "$CONFIG/git"
echo ">>> Installed git config"

#
# IdeaVIM
#
ln -sFfh "$DOTFILES/ideavimrc" "$HOME/.ideavimrc"
echo ">>> Installed .ideavimrc"

#
# Hammerspoon
#
ln -sFfh "$DOTFILES/hammerspoon" "$HOME/.hammerspoon"
echo ">>> Installed Hammerspoon config"

#
# Zsh
#

# Grc
#if ! [ -x "$(command -v grc)" ]; then
#    brew install grc
#    echo ">>> Installed grc"
#fi

# Oh-my-zsh
#rm -rf "$HOME/.oh-my-zsh"
#rm "$HOME/.zshrc"
#RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#rm "$HOME/.zshrc"
#ln -sFfh "$DOTFILES/oh-my-zsh/zshrc" "$HOME/.zshrc"
#echo ">>> Installed zsh config"

ln -sFfh "$DOTFILES/nvim" "$CONFIG/nvim"
#nvim +PackerInstall
echo ">>> Installed nvim config"
