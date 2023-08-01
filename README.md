# Arch Linux Installer
<p align="center">
  <a>
    <img src=https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge/>
  </a>
  <a>
    <img src=https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white/>
  </a>
</p>

Arch Linux installation script that works with Ansible.

## How to use
To use the script run it with:
```
ansible-playbook install.yml --ask-become-pass --extra-vars "username=<GIT_USER.NAME> email=<GIT_USER.EMAIL>"
```

Aur packages are not managed using this script so you need to install them
manually.

# AUR packages that I use
```
laptop-mode-tools-git
ly
spotify
tofi
wob
```

## TODO
- [ ] Split it in modules
- [ ] Dotfiles installation from script
- [ ] IntellijIdea ToolBox installation
