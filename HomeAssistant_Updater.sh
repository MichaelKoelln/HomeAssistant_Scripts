#!/bin/bash

#Update RaspberryPi
sudo apt-get update 
sudo apt-get upgrade -y
echo "RaspberryPi is updated."

#Update HomeAssistant
sudo -u homeassistant -H -s
source /srv/homeassistant/bin/activate
pip3 install --upgrade homeassistant
echo "HomeAssistant is updated."
