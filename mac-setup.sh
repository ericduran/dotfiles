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
go
kubectl
awscli"

listOfCaskInstall="iterm2
minikube
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

