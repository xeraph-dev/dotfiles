#!/usr/bin/env bash

packages="\
@typescript-eslint/eslint-plugin
@typescript-eslint/parser
eslint
eslint-config-prettier
eslint-config-standard
eslint-plugin-astro
eslint-plugin-import
eslint-plugin-prettier
eslint-plugin-simple-import-sort
eslint-plugin-sort-destructure-keys
eslint-plugin-typescript-sort-keys
eslint-plugin-unused-imports
prettier
prettier-plugin-astro"

case "$1" in
npm) npm install -D "$packages" ;;
yarn) yarn add -D "$packages" ;;
pnpm) pnpm add D "$packages" ;;
*) echo "Usage: $0 {npm|yarn|pnpm}" ;;
esac

url='https://raw.githubusercontent.com/adrianrl99/dotfiles/scripts/js'
curl -sL "$url/.prettierrc.js" >.prettierrc.js
curl -sL "$url/.eslintrc.js" >.eslintrc.js

case "$2" in
astro) curl -sL "$url/tsconfig.astro.json" >tsconfig.json ;;
*) curl -sL "$url/tsconfig.json" >tsconfig.json ;;
esac
