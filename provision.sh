. ~/.nvm/nvm.sh
nvm install 6
nvm alias default 6
# Need legacy npm version for echo server.
npm install -g npm@2
# Install node version 6 for all users
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
# Install pm2
npm install -g pm2
# Make directory for deployments
sudo mkdir -p /var/www
sudo chown vagrant:vagrant -R /var/www
# Allow app to bind on port 80
sudo apt-get install authbind
sudo touch /etc/authbind/byport/80
sudo chown vagrant /etc/authbind/byport/80
sudo chmod 755 /etc/authbind/byport/80
authbind --deep pm2 update
