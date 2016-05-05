. ~/.nvm/nvm.sh
nvm install 6
nvm alias default 6
# Need legacy npm version for echo server.
npm install -g npm@2
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
npm install -g pm2
pm2 ping
sudo mkdir -p /var/www
sudo chown vagrant:vagrant -R /var/www
