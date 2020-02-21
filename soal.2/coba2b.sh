#!/bin/bash
judul=$(echo $1 | tr -dc A-Za-z)
head /dev/urandom | tr -dc A-Za-z0-9 | head -c 28 > $judul.txt
