#!/bin/bash

## Atualizando repositório ##

sudo apt update 

## Local de download dos programas ##

mkdir /home/$USER/Downloads/programas

cd /home/$USER/Downloads/programas

## Google chrome e vscode ##

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://az764295.vo.msecnd.net/stable/c3f126316369cd610563c75b1b1725e0679adfb3/code_1.58.2-1626302803_amd64.deb

sudo dpkg -i *.deb

## Programas do repositório ##

sudo apt install nodejs -y

sudo apt install git -y

sudo apt install flatpak -y

sudo apt install snapd -y

sudo snap install spotify -y

sudo apt install virtualbox -y

sudo apt install gnome-tweaks -y

sudo apt install plank -y

## Brave Browser ##

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y
