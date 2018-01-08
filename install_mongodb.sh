#!/bin/bash
##Adding the MongoDB Repository
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
##following command to create a list file for MongoDB.
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
##After adding the repository details, we need to update the packages list.
sudo apt-get update
##Installing and Verifying MongoDB
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl status mongodb
##The last step is to enable automatically starting MongoDB when the system starts.
sudo systemctl enable mongodb
##scripts often won’t run unless the bash script has the correct permissions
sudo chmod +x mongodb.sh

## When the script is marked as an executable, it’s time to move the script so that it’s accessible in the user’s path

##sudo mv /location/of/script /usr/bin