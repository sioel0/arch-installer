#!/bin/bash

rm ~/.bashrc ~/.zshrc
# setup home directory files
stow --dir=dots/ --target=/home/$USER home

# setup .config directory
stow --dir=dots --target=/home/$USER/.config config
