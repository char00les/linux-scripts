#!/bin/bash
# create_csr.sh
# creates a CSR for apache2 certficates
(snip a lot of tedious stuff - variable setting, error checks and so on)
openssl gen$KEY_TYPE_VAR -out $TMPDIR_VAR/$DOMAIN.key $KEY_LENGTH_VAR

openssl req -new -nodes -key $TMPDIR_VAR/$DOMAIN.key -out $TMPDIR_VAR/$DOMAIN.csr -config $CNF_FILE_VAR -batch

echo "Your CSR is ..."

cat $TMPDIR_VAR/$DOMAIN.csr