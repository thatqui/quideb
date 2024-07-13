#!/usr/bin/env bash

if [ ! -d "dists/qui" ]; then
  mkdir -p dists/qui
fi

if [ ! -d ".temp" ]; then
  mkdir -p .temp
fi

rm -rf pool dists db

cd .temp

wget https://dl.discordapp.net/apps/linux/0.0.59/discord-0.0.59.deb
wget https://packages.element.io/debian/dists/default/main/binary-amd64/Packages/pool/main/e/element-desktop/element-desktop_1.11.70_amd64.deb
cd ..

reprepro --ask-passphrase -Vb . includedeb qui .temp/*.deb
