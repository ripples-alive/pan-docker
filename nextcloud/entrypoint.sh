#!/bin/bash

# use local user id to prevent permission hell
USER_ID=${USER_ID:-1000}
echo "starting with uid: ${USER_ID}"
usermod -u ${USER_ID} www-data
groupmod -g ${USER_ID} www-data

/entrypoint.sh "$@"
