#!/bin/bash

echo "$(date) === Stop User Process ==="
/usr/sbin/fuser -u -k -9 -m /mnt/data01/	