#!/bin/bash
# From https://get.docker.com/
wget -qO- https://get.docker.com/ | sh &&
sudo usermod -aG docker valdis &&
sudo service docker start
# @test
docker --version

