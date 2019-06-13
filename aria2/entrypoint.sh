#!/bin/bash

# use local user id to prevent permission hell
USER_ID=${USER_ID:-1000}
echo "starting with uid: ${USER_ID}"
addgroup -g $USER_ID -S user
adduser -u $USER_ID -D -S -G user user

# fix permissions
chown -R user:user /conf
chown -R user:user /data

darkhttpd /aria2-webui --port 80 --uid user &
su-exec user "$@"
