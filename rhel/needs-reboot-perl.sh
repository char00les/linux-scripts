#!/bin/bash

# Requies "Perl"

if [[ ! $(which perl) ]]; then
  sudo yum install -y perl
fi

#One Example
LAST_KERNEL=$(rpm -q --last kernel | perl -pe 's/^kernel-(\S+).*/$1/' | head -1)
CURRENT_KERNEL=$(uname -r)

test $LAST_KERNEL = $CURRENT_KERNEL || echo REBOOT