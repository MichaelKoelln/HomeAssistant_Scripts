#!/bin/bash

#Update RaspberryPi
sudo apt-get update
sudo apt-get upgrade -y
echo "RaspberryPi is updated."

#Python3 install
sudo apt-get install python3 python3-venv python3-pip -y

#Adding HomeAssistant user
sudo useradd -rm homeassistant -G gpio

#Creation of directory
cd /srv
sudo mkdir homeassistant
sudo chown homeassistant:homeassistant homeassistant

#Creation of virtual environment
sudo -u homeassistant -H -s
cd /srv/homeassistant
python3 -m venv .
source bin/activate

#Python3 Package install
python3 -m pip install wheel

#HomeAssistant install
pip3 install homeassistant

#HomeAssistant start
hass

#Finish
echo "HomeAssistant is installed and activated."
