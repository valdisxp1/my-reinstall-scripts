#!/bin/bash
# From https://www.virtualbox.org/wiki/Linux_Downloads
echo "deb http://download.virtualbox.org/virtualbox/debian `lsb_release -cs` contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list &&
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - &&
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add - &&
sudo apt-get update &&
sudo apt-get install -y virtualbox-5.1
# @test
vboxmanage --version
