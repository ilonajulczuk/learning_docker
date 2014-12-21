#!/bin/bash

secrets/manage.py migrate
secrets/manage.py runserver 0.0.0.0:8000
