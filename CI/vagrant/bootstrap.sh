#!/usr/bin/env bash

apt-get update

# install python (https://gist.github.com/jbergantine/8742830)
# install nginx (http://vegibit.com/how-to-provision-nginx-using-vagrant)
apt-get install python-dev python-pip nginx -q -y

# install pip and uwsgi (https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-uwsgi-and-nginx-on-ubuntu-14-04)
pip install virtualenv flask uwsgi
