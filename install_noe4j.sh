#!/bin/bash
sudo apt update
yes Y|sudo apt install default-jre default-jre-headless 
wget --no-check-certificate -O - https://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add 
echo 'deb http://debian.neo4j.org/repo stable/' | sudo tee /etc/apt/sources.list.d/neo4j.list
sudo apt update
yes Y|sudo apt install neo4j
sudo service neo4j stop
sudo service neo4j start
