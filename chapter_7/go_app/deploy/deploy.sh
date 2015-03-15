#!/bin/bash

host=myapp.dockerbash.com
scp app.conf.tpl "root@${host}:app.conf.tpl"
ssh "root@${host}" 'bash -s' < deploy_remote.sh
