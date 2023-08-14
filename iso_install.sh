#!/bin/sh

echo "Arch Linux installation script by sioel0"
echo ""
echo "         _            ______ "
echo "   _____(_)___  ___  / / __ \\"
echo "  / ___/ / __ \/ _ \/ / / / /"
echo " (__  ) / /_/ /  __/ / /_/ / "
echo "/____/_/\____/\___/_/\\____/  "
echo ""

while true
do
  read -p "Insert the destination disk: " disk
  echo ""
  if [[ -b "$disk" ]]; then
    break
  else
    echo "Insert block device does not exist, insert a valid disk"
    echo ""
  fi
done

while true
do
  read -s -p "Insert encryption password: " enc_pass
  echo ""
  read -s -p "Insert encryption password again: " enc_pass_check
  echo ""

  if [[ "$enc_pass" == "$enc_pass_check" ]]; then
    break
  else
    echo "The two passwords to do not match, try again"
    echo ""
  fi
done

while true
do
  read -s -p "Insert sioel0's password: " usr_pass
  echo ""
  read -s -p "Insert sioel0's password again: " usr_pass_check
  echo ""

  if [[ "$usr_pass" == "$usr_pass_check" ]]; then
    break
  else
    echo "The two passwords to do not match, try again"
    echo ""
  fi
done

read -p "Do you want to install Arch Linux on $disk?[Y/n]" ans

# default answer is Yes
if [[ "$ans" == "" ]]; then
  ans="Y"
fi

case $ans in
  [Yy]* ) echo "Installation will begin shortly"
    ;;
  [Nn]* ) echo "Aborting"
    exit
    ;;
  *) echo "Invalid answer, installation aborted"
    exit 1
    ;;
esac

read -p "Insert the desired hostname: " $host
echo ""

echo "Your new Arch Linux system will be installed on $disk with hostname $host"

sed -i "s|HDD|${disk}|g" archinstall/{config.json,disks.json}
sed -i "s|ENC_PASS|${enc_pass}|g" archinstall/creds.json
sed -i "s|USR_PASS|${usr_pass}|g" archinstall/creds.json
sed -i "s|HOSTNAME|${host}|g" archinstall/config.json

if [[ "$1" != "" ]] && [[ "$1" == "--pc" ]]; then
  # support to all my pc's (currently I only have one XD)
  case $2 in
    "x530fn") 
      disk_config="x530fn.json"
      ;;
    "*")
      echo "Unsupported pc/laptop. Aborting"
      exit 1
  esac
else
  disk_config="new.json"
fi

archinstall --config archinstall/config.json --creds archinstall/creds.json --disk_layouts archinstall/$disk_config --silent

# reset all file back to initial state
sed -i "s|${disk}|HDD|g" archinstall/{config.json,disks.json}
sed -i "s|${enc_pass}|ENC_PASS|g" archinstall/creds.json
sed -i "s|${usr_pass}|USR_PASS|g" archinstall/creds.json
sed -i "s|${host}|HOSTNAME|g" archinstall/config.json

# remove user_credentials log file
rm /var/log/archinstall/user_credentials.json