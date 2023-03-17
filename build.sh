#!/usr/bin/env bash
# exit on error
set -o errexit

pipenv shell 

poetry install

python manage.py collectstatic --no-input
python manage.py migrate