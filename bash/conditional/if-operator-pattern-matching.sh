#!/bin/bash
#Date:032223
#Comment: if statements

var="asdf"

echo $var

if [[ "$var" =~ ^[0-9]+$ ]]; then
  echo "The variable is a number"
fi

var="12345"

echo $var