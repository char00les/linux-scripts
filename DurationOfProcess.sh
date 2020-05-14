#!/bin/bash

#Show how long a process has been running

PID=$1

ps -p PID -o etime
ps -p PID -o etimes
