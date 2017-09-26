#!/bin/bash

listOfBrewInstall="git
less
lesspipe
pdftohtml
hub
tmux
irssi
jq
kubernetes-helm
node
tldr
sqlite
newsbeuter
yarn
ruby
go
kubectl
wget
vault
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

