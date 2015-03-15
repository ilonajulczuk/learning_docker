#!/bin/bash

txtgrn='\e[0;32m'
txtrst='\e[0m'

function info {
    echo -e "[${txtgrn}$1${txtrst}]"
}

info "Pull image from docker hub"
docker pull attero/go_web

info "Run container"
CONTAINER_ID=$(sudo docker run -d -P attero/go_web)
info "Container started"
info "Id: $CONTAINER_ID"
CONTAINER_HOST=$(docker port $CONTAINER_ID 8080)
info "Listening on: $CONTAINER_HOST"

info "Prepare new nginx config"
sed "s/<host>/$CONTAINER_HOST/g" app.conf.tpl > /etc/nginx/sites-enabled/app.conf

service nginx restart

info "Stop previous container"
docker stop current
info "Remove previous container"
docker rm current

info "Rename container to current"
docker rename $CONTAINER_ID current
info "Deploy succeeded"
