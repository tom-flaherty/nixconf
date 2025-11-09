#!/usr/bin/env bash

parent_working_directory=${PWD##*/}
pwd_basename=${parent_working_directory:-/}
if [[ $pwd_basename != "nixconf" ]]; then
    echo "Error: Not running in nixconf director"
    exit 1
fi

echo "sudo nixos-rebuild switch"
sudo nixos-rebuild switch
if [[ $? -eq 0 ]]; then
    echo "----------------------------------------"
    echo "Build successful - commiting to git"
    cp /etc/nixos/configuration.nix ./configuration.nix
    cp /etc/nixos/hardware-configuration.nix ./hardware-configuration.nix
    git add ./*nix
    git commit -m "configuration.nix build"
    git push
else
    echo "Error: Build failed"
    exit 1
fi
