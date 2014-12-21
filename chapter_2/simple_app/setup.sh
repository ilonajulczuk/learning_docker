#!/bin/bash

pip install -r /app/requirements.txt
/app/secrets/manage.py migrate
/app/secrets/manage.py runserver 0.0.0.0:8000

