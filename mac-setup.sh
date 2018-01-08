#!/bin/bash

listOfBrewInstall="git
less
hub
tmux
irssi
jq
node
tldr
wget"

listOfCaskInstall="iterm2
atom
keybase"

for app in $listOfBrewInstall
do
  brew install "$app"
done

for app in $listOfCaskInstall
do
  brew cask install "$app"
done

