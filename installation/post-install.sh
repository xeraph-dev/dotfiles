#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

mkdir ~/aur
mkdir -p ~/.local/bin
mkdir ~/.wallpaper
mkdir ~/Download
mkdir ~/Documents
mkdir ~/Music
mkdir -p ~/Pictures/scrot
mkdir ~/work

sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration

systemctl enable warp-svc.service
systemctl start warp-svc.service

warp-cli add-excluded-host secure.etecsa.net
warp-cli add-excluded-host www.portal.nauta.cu
warp-cli add-excluded-host repos.uo.edu.cu
