#!/usr/bin/env bash

if [ ! -d "dists/qui" ]; then
  mkdir -p dists/qui
fi

if [ ! -d ".temp" ]; then
  mkdir -p .temp
fi

rm .temp/*

rm -rf pool dists db

cd .temp

xdg-open https://github.com/cinnyapp/cinny-desktop/releases/latest
read -p "Paste cinny link: " cinnylink

wget $cinnylink

cd ..

reprepro -S --ask-passphrase -Vb . includedeb qui .temp/*.deb
