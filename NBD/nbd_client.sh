#!/bin/bash

read -p "Enter server ip: " ip
sudo nbd-client $ip -N Mu /mnt/dhini
