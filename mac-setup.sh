#!/bin/bash

listOfBrewInstall="git
less
lesspipe
pdftohtml
tmux
irssi
node
yarn
ruby
minikube
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
