## pm2 deployment example

This is a quick example which demonstrates how `pm2`'s deployment feature should be used.
Here are the steps you need to take (assuming you have [`vagrant`](https://www.vagrantup.com) installed):

```
npm install -g pm2
```
This installs a local instance of `pm2` that we will use to deploy code to VM.

```
vagrant up
```
Launch a virtual machine to which we will deploy an echo server.
This step will also provision machine with required configuration.

```
pm2 deploy production setup
```
This will setup required directory structure for `pm2`, and it will also clone the repository for the 1st time.

```
pm2 deploy production
```
This deploys echo server to VM.
Visit `http://http://192.168.60.50`. You should see echo server up and running.


## Zero-Downtime deployments

This repo is also a quite good (yet simple) example of zero-downtime deployments with pm2.
The only change, really, that makes this possible is [this handler](https://github.com/jutaz/pm2-deploy-example/blob/master/server.js#L23-L30),
which basically makes sure that we gracefully close connection when process is about to exit.
