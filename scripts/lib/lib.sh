#!/usr/bin/env bash

set -e

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

RED='\033[0;31m'
PURPLE='\033[0;35m'
ORANGE='\033[0;33m'
L_BLUE='\033[1;34m'
CYAN='\033[1;36m'
L_GREEN='\033[1;32m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color