#!/bin/bash

if [[ ! $(which needs-restarting) ]]; then
  sudo yum install -y yum-utils
fi

needs-restarting