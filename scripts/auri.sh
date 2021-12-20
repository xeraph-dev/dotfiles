#!/bin/bash

if [ -z "$AUR_PATH" ]; then
  echo "Please set AUR_PATH in your envs"
  exit 1
fi

if [ -z "$1" ]; then
  echo "Missing package name"
  exit 1
fi

package_path="$AUR_PATH/$1"

if [ -d "$package_path" ]; then
  printf "Directory %s already exists. You want delete it? (y/N) " "$package_path"
  read -r line

  if [ "$line" = "y" ] || [ "$line" = "Y" ]; then
    rm -rf "$package_path"
    echo "Directory $package_path deleted"
  elif [ -z "$line" ] || [ "$line" = "n" ] || [ "$line" = "N" ]; then
    echo "Exiting"
    exit 0
  fi
fi

git clone "https://aur.archlinux.org/$1.git" "$package_path"
cd "$package_path" || exit 1
makepkg -si
