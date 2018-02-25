#!/bin/bash

# idea: Add brew command to post append the command I ran here
# same thing when I run brew cask install, it's kinda annoying to keep this updated
listOfBrewInstall="git
less
fish
fpp
hub
rust
tmux
irssi
jq
node
urlview
tldr
wget"

listOfCaskInstall="iterm2
atom
google-cloud-sdk
keybase
visual-studio-code"

for app in $listOfBrewInstall
do
  brew install "$app"
done

for app in $listOfCaskInstall
do
  brew cask install "$app"
done

