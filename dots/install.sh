#!/bin/bash

rm ~/.bashrc
# setup home directory files
stow --dir=dots/ --target=/home/$USER home

mkdir ~/.config
# setup .config directory
stow --dir=dots --target=/home/$USER/.config config
