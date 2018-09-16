#!/bin/sh
echo "MongoDB installing..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
echo "MongoDB service starting..."
sudo service mongod start

echo "NodeJS installing..."
sudo apt-get install nodejs
echo "NPM installing..."
sudo apt-get install npm

echo "Node modules installing..."
npm install
echo "MongoDB server starting..."
gnome-terminal -e "mongod --dbpath=./db/"
echo "ExpressJS server starting..."
npm start