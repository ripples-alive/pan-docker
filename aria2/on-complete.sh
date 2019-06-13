#!/bin/sh
if [ $2 -ge 1 ]; then
    base=${3#/data/_dl/}
    mv "/data/_dl/${base%%/*}" /data
fi
echo [$(date)] $2, $3, $1 "<br>" >> /data/_log.html
