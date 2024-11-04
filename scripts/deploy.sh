#!/usr/bin/env bash

# activate the virtual environment
source /home/aditya/friendnet-CICD/env/bin/activate

# Cd into the project code
cd /home/aditya/friendnet-CICD

# pull the latest codebase
git pull

# install the app dependencies
pip install -r requirements.txt

# run the databse migration
python manage.py migrate

# run the collect static command
python manage.py collectstatic --no-input

# put all other commads that required for you specific app

# deactivate
deactivate

# reload nginx
sudo systemctl reload nginx

# restart the gunicorn
sudo systemctl restart gunicorn

