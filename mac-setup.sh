#!/bin/bash

listOfBrewInstall="git
tmux
node
yarn
ruby
kubectl
awscli"

listOfCaskInstall="iterm2
keybase
alfred"

for app in $listOfBrewInstall
do
  brew install "$app"
done

for app in $listOfCaskInstall
do
  brew cask install "$app"
done
