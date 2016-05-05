. ~/.nvm/nvm.sh
nvm install 6
nvm alias default 6
# Need legacy npm version for echo server.
npm install -g npm@2
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
npm install -g pm2
sudo mkdir -p /var/www
sudo chown vagrant:vagrant -R /var/www
sudo apt-get install authbind
sudo touch /etc/authbind/byport/80
sudo chown vagrant /etc/authbind/byport/80
sudo chmod 755 /etc/authbind/byport/80
authbind --deep pm2 update
