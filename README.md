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
This installation script works in two different phases:
- OS installation phase
- Post-installation phase

### OS installation phase
To use the OS installation phase just run this command:
```
git clone https://github.com/sioel0/arch-installer
cd arch-installer
./iso_install.sh [--pc <pc_model>]
```
If the `--pc` option is omitted any disk layout file will be used and you will
have to configure it yourself. This can be useful when you're using a new
pc/laptop.

### Post-installation phase
After reboot you will find the arch-installer directory at 
**/home/sioel0/Projects/arch-installer** you just have to run the following
command:
```
cd /home/sioel0/Projects/arch-installer
ansible-playbook install.yml --ask-become-pass --extra-vars "signing_gpg_key=<KEY>"
```

**N.B.** To extract the key value use `gpg --list-private-keys --format=long`
